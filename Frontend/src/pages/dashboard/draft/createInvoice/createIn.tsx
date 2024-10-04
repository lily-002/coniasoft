import { useEffect, useState } from "react";
import { useAppDispatch, useAppSelector } from "../../../../store/hooks/hooks";
import { getOutgoingInvoices } from "../../../../store/features/OutgoingInvoice";
import XMLComponent from "../../xml/XMLComponent";
import Loader from "../../../../components/Loader/Loader";
import { axiosInstance } from "../../../../api/api";
import { getToken } from "../../../../services/auth";
import { toast } from "react-toastify";
import { CompanyProps, OutgoingInvoiceProps } from "../../../../types/types";
import InvoiceTemplate from "../../invoices/InvoiceTemplate";
import * as XLSX from "xlsx";
import jsPDF from 'jspdf';
import 'jspdf-autotable';

const CreateIn = () => {
  const { outgoingInvoices, loading, message } = useAppSelector(state => state.outgoingInvoices);
  const [email, setEmail] = useState(""); // State for email
  const [receiverName, setReceiverName] = useState(""); // State for receiver name
  const [filteredInvoices, setFilteredInvoices] = useState<OutgoingInvoiceProps[]>([]); // Filtered invoices based on email and receiver name
  const [selectedIDs, setSelectedIDs] = useState<number[]>([]);
  const dispatch = useAppDispatch();

  const [XMLInfo, setXMLInfo] = useState({ show: false, loading: false, id: "", data: "" });
  const [PDFInfo, setPDFInfo] = useState({
    show: false, loading: false, id: "",
    invoice: {} as OutgoingInvoiceProps,
    company: {} as CompanyProps
  });
  const [deleteInfo, setDeleteInfo] = useState({ show: false, id: "", loading: false });

  useEffect(() => {
    if (!outgoingInvoices.length) {
      dispatch(getOutgoingInvoices());
    }
  }, [outgoingInvoices.length]);

  // Function to filter invoices by email and receiver name
  const handleFilterByEmailAndReceiver = async () => {
    try {
        const { data } = await axiosInstance.get(`/user/invoice/${email}/${receiverName}`, {
            headers: {
                "Authorization": `Bearer ${getToken()}`
            }
        });
        if (data.status) {
            setFilteredInvoices([data.data]); // Assuming you're expecting a single invoice
            toast.success('Invoice fetched successfully!', { autoClose: 4000 });
        }
    } catch (error) {
        toast.error("No invoices found for this email and receiver name", { autoClose: 4000 });
        console.error("Error fetching invoice:", error);
    }
  };

  const handleCheckAll = () => selectedIDs.length === filteredInvoices.length 
    ? setSelectedIDs([]) 
    : setSelectedIDs(filteredInvoices.map(inv => inv.id as number));

  const handleCheck = (val: number) => {
    if (selectedIDs.includes(val)) {
      setSelectedIDs(selectedIDs.filter(id => id !== val));
      return;
    }
    setSelectedIDs([...selectedIDs, val]);
  };

  // Function to view the PDF of an invoice
  const handleViewPdf = async (invoice: OutgoingInvoiceProps) => {
    setPDFInfo({ ...PDFInfo, loading: true });
    try {
      const { data } = await axiosInstance.get(`/user/company`, {
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Authorization": `Bearer ${getToken()}`
        }
      });

      // Check if the company data was successfully fetched
      if (data.status) {
        console.log("Invoice Data:", invoice);
        console.log("Company Data:", data.data);
        setPDFInfo({ ...PDFInfo, show: true, invoice, company: data.data, loading: false });
        return;
      }
      setPDFInfo({ ...PDFInfo, loading: false });
      return toast.error(data.message, { autoClose: 4000 });
    } catch (error: any) {
      console.error("Error fetching invoice data:", error);
      setPDFInfo({ ...PDFInfo, loading: false });
      return toast.error(error.response 
        ? error.response.data?.error || error.response?.data?.message 
        : "Something went wrong, try again later.");
    }
  };

  return (
    <>
      {/* Loader component */}
      {XMLInfo.loading || PDFInfo.loading || deleteInfo.loading ? <Loader message="Processing..." /> : null}

      {/* XML Component */}
      <XMLComponent
        show={XMLInfo.show}
        XMLText={XMLInfo.data}
        title="E-Invoice XML"
        handleClose={() => setXMLInfo({ ...XMLInfo, show: false, data: "", id: "" })}
      />

      {/* Invoice PDF Component */}
      <InvoiceTemplate
        show={PDFInfo.show}
        invoice={PDFInfo.invoice}
        company={PDFInfo.company}
        handleClose={() => setPDFInfo({ ...PDFInfo, show: false, invoice: {} as OutgoingInvoiceProps, company: {} as CompanyProps })}
      />

      <div className="w-full min-h-[200px] bg-white text-[#333333] border shadow-md p-3">

        {/* Email and Receiver Name Input Fields */}
        <div className="mb-4">
          <input
            type="email"
            placeholder="Enter email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="border p-2 rounded"
          />
          <input
            type="text"
            placeholder="Enter receiver name"
            value={receiverName}
            onChange={(e) => setReceiverName(e.target.value)}
            className="border p-2 rounded ml-2"
          />
          <button onClick={handleFilterByEmailAndReceiver} className="ml-2 bg-blue-500 text-white px-4 py-2 rounded">
            Generate Invoice
          </button>
        </div>

        {/* Invoices Table */}
        {filteredInvoices.length > 0 ? (
          <table className="w-full table-auto text-xs mb-3">
            <thead>
              <tr className="bg-[#F3FAFF]">
                <th className="p-3 text-start border">Invoice Type</th>
                <th className="p-3 text-start border">Customer Name</th>
                <th className="p-3 text-start border">Payment Method</th>
                <th className="p-3 text-start border">Total Paid</th>
                <th className="p-3 text-start border">Invoice Date</th>
                <th className="p-3 text-start border"></th>
              </tr>
            </thead>
            <tbody>
              {filteredInvoices.map((invoice) => (
                <tr key={invoice.id}>
                  <td className="p-3 border">{invoice.invoice_type}</td>
                  <td className="p-3 border">{invoice.receiver_name}</td>
                  <td className="p-3 border">{invoice.payment_means}</td>
                  <td className="p-3 border">
                    {+invoice.total_discount + +invoice.total_increase + +invoice.total_products + +invoice.total_taxes}
                  </td>
                  <td className="p-3 border">{invoice.invoice_date}</td>
                  <td className="p-3 border">
                    <button onClick={() => handleViewPdf(invoice)} className="bg-red-500 text-white px-2 py-1 rounded">
                      View PDF
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        ) : (
          <p>No invoices found for this email and receiver name</p>
        )}
      </div>
    </>
  );
};

export default CreateIn;
