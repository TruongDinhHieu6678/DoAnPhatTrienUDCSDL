package controller;

import model.LoaiSanPham;
import model.QuanLyLoaiSanPham;
import model.QuanLySanPham;
import model.SanPham;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ManagerProductController {
    @RequestMapping(value = "/ManagerProduct",method = RequestMethod.GET)
    public String LayDanhSachSanPham(Model model){

        QuanLySanPham qlsp = new QuanLySanPham();
        List<SanPham> lst_sp = qlsp.getAllSanPham();
        model.addAttribute("list_sp", lst_sp);

        return "ManagerProduct";


    }
}
