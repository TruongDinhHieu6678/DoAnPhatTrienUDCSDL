package controller;

import model.LoaiSanPham;
import model.QuanLyLoaiSanPham;
import model.QuanLySanPham;
import model.SanPham;
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
    public String LayDanhSachSanPham(Model model ){
        String Trang = "";
        try {
            Trang= RequestTrang(Trang);
        }catch(Exception exc) {
            Trang="1";
        }
        QuanLySanPham qlsp = new QuanLySanPham();
        List<SanPham> lst_sp = qlsp.getSanPhamTheoTrang(1);
        model.addAttribute("list_sp", lst_sp);
        return "ManagerProduct";
    }
    public String RequestTrang(@RequestParam("Trang") String Trang)
    {
        return Trang;
    }
}
