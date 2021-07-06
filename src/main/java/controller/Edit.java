package controller;

import model.LoaiSanPham;
import model.QuanLySanPham;
import model.SanPham;
import model.Trang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Edit", value = "/Edit")
public class Edit extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuanLySanPham qlsp = new QuanLySanPham();
        SanPham sp = new SanPham();
        sp.setTenSanPham(request.getParameter("text"));
        sp.setHinhURL(request.getParameter("email"));
        sp.setNgayNhap(request.getParameter("Address"));
        sp.setMoTa(request.getParameter("Phone"));
        List<Trang> ListT = qlsp.GetTrang("1");
        List<SanPham> lst_sp = qlsp.getSanPhamTheoTrang(qlsp.PageFocus("1", 1));
        List<LoaiSanPham> lst_lsp = qlsp.getAllLoaiSanPham();
        request.setAttribute("list_sp", lst_sp);
        request.setAttribute("list_T", ListT);
        request.setAttribute("List_lsp", lst_lsp);
        request.getRequestDispatcher("ManagerProduct.html").forward(request,response);
    }
}
