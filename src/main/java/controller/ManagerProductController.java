package controller;

import model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.ws.rs.core.Request;
import java.util.List;

@Controller
public class ManagerProductController {
    @RequestMapping(value = "/ManagerProduct",method = RequestMethod.GET)
    public String LayDanhSachSanPham(Model model , @RequestParam("Trang") String Trang){

        QuanLySanPham qlsp = new QuanLySanPham();
        List<model.Trang> ListT = qlsp.GetTrang(Trang);
        List<SanPham> lst_sp = qlsp.getSanPhamTheoTrang(qlsp.PageFocus(Trang, 1));
        List<LoaiSanPham> lst_lsp = qlsp.getAllLoaiSanPham();
        model.addAttribute("list_sp", lst_sp);
        model.addAttribute("list_T", ListT);
        model.addAttribute("List_lsp", lst_lsp);
        return "ManagerProduct";
    }
}
