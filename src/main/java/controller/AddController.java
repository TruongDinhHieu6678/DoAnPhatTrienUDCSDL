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

import java.util.Date;
import java.util.List;

@Controller
public class AddController {
    @RequestMapping(value = "/Add",method = RequestMethod.GET)
    public String AddSanPham(Model model, @RequestParam("name") String name,@RequestParam("image") String image,
    @RequestParam("price") String price,@RequestParam("title") String title,@RequestParam("category") String category){
        Date date = new Date();
        QuanLySanPham qlsp = new QuanLySanPham();
        QuanLyLoaiSanPham lsp = new QuanLyLoaiSanPham();
        SanPham sp = new SanPham();
        sp.setMaSanPham(Integer.toString(qlsp.MasanphamHonle()));
        sp.setTenSanPham(name);
        sp.setNgayNhap(date.toString());
        sp.setHinhURL(image);
        sp.setMoTa(title);
        sp.setMaLoaiSanPham(Integer.parseInt(category));
        qlsp.AddSanpham(sp);

        List<model.Trang> ListT = qlsp.GetTrang("1");
        List<SanPham> lst_sp = qlsp.getSanPhamTheoTrang(qlsp.PageFocus("1", 1));
        List<LoaiSanPham> lst_lsp = qlsp.getAllLoaiSanPham();
        model.addAttribute("list_sp", lst_sp);
        model.addAttribute("list_T", ListT);
        model.addAttribute("List_lsp", lst_lsp);
        return "ManagerProduct";

    }
}
