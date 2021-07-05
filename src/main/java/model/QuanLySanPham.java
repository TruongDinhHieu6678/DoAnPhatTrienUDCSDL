/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Statement;

/**
 *
 * @author NguyenBaViet
 */
public class QuanLySanPham {
   
    
    public List<SanPham> getAllSanPham()
    {
        Connection connection = null;
        ResultSet rs = null;
        List<SanPham> lst = new ArrayList<SanPham>();
        try
        {
            DataConnectManager dataConnnectManager = new DataConnectManager();
            connection =  dataConnnectManager.getConnection();
            
            if (connection != null)
            {
                String strSQL = "SELECT * FROM SanPham";
                rs =  dataConnnectManager.getDataTable(strSQL, connection);
                while(rs.next())
                {
                    SanPham sp = new SanPham();
                    sp.setMaSanPham(rs.getString("MaSanPham"));
                    sp.setTenSanPham(rs.getString("TenSanPham"));
                    sp.setHinhURL(rs.getString("HinhURL").toString());
                    sp.setGiaSanPham(rs.getDouble("GiaSanPham"));
                    sp.setNgayNhap(rs.getString("NgayNhap"));
                    sp.setSoLuongTon((rs.getInt("SoLuongTon")));
                    sp.setSoLuongBan((rs.getInt("SoLuongBan")));
                    sp.setSoLuocXem((rs.getInt("SoLuocXem")));
                    sp.setMoTa(rs.getString("MoTa"));
                    sp.setBiXoa(rs.getInt("BiXoa"));
                    sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
                    sp.setMaHangSanXuat(rs.getInt("MaHangSanXuat"));
                    lst.add(sp);
                }
            }
            
            
            
        }
        catch(Exception e)
        {
        
        }
        finally {
            if (connection != null) {
                try {
                    rs.close();
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLySanPham.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return lst;
    }

    public List<SanPham> getSanPhamTheoTrang(int Trang)
    {
        Connection connection = null;
        ResultSet rs = null;
        List<SanPham> lst = new ArrayList<SanPham>();
        try
        {
            DataConnectManager dataConnnectManager = new DataConnectManager();
            connection =  dataConnnectManager.getConnection();

            if (connection != null)
            {
                String strSQL = String.format("SELECT * FROM sanpham\n" +
                        "LIMIT 5 OFFSET %d", Trang*5 - 5);
                rs =  dataConnnectManager.getDataTable(strSQL, connection);
                while(rs.next())
                {
                    SanPham sp = new SanPham();
                    sp.setMaSanPham(rs.getString("MaSanPham"));
                    sp.setTenSanPham(rs.getString("TenSanPham"));
                    sp.setHinhURL(rs.getString("HinhURL").toString());
                    sp.setGiaSanPham(rs.getDouble("GiaSanPham"));
                    sp.setNgayNhap(rs.getString("NgayNhap"));
                    sp.setSoLuongTon((rs.getInt("SoLuongTon")));
                    sp.setSoLuongBan((rs.getInt("SoLuongBan")));
                    sp.setSoLuocXem((rs.getInt("SoLuocXem")));
                    sp.setMoTa(rs.getString("MoTa"));
                    sp.setBiXoa(rs.getInt("BiXoa"));
                    sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
                    sp.setMaHangSanXuat(rs.getInt("MaHangSanXuat"));
                    lst.add(sp);
                }
            }



        }
        catch(Exception e)
        {

        }
        finally {
            if (connection != null) {
                try {
                    rs.close();
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLySanPham.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return lst;
    }


    public SanPham LaySanPhamMoiNhat()
    {
        Connection connection = null;
        ResultSet rs = null;
        SanPham sp = new SanPham();
        try
        {
            DataConnectManager dataConnnectManager = new DataConnectManager();
            connection =  dataConnnectManager.getConnection();
            
            if (connection != null)
            {
                String strSQL = "SELECT * FROM `sanpham` WHERE 1 ORDER by NgayNhap DESC LIMIT 1;";
                rs =  dataConnnectManager.getDataTable(strSQL, connection);
                while(rs.next())
                {
              
                    sp.setMaSanPham(rs.getString("MaSanPham"));
                    sp.setTenSanPham(rs.getString("TenSanPham"));
                    sp.setHinhURL(rs.getString("HinhURL").toString());
                    sp.setGiaSanPham(rs.getDouble("GiaSanPham"));
                    sp.setNgayNhap(rs.getString("NgayNhap"));
                    sp.setSoLuongTon((rs.getInt("SoLuongTon")));
                    sp.setSoLuongBan((rs.getInt("SoLuongBan")));
                    sp.setSoLuocXem((rs.getInt("SoLuocXem")));
                    sp.setMoTa(rs.getString("MoTa"));
                    sp.setBiXoa(rs.getInt("BiXoa"));
                    sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
                    sp.setMaHangSanXuat(rs.getInt("MaHangSanXuat"));
                    
                }
            }
            
            
            
        }
        catch(Exception e)
        {
        
        }
        finally {
            if (connection != null) {
                try {
                    rs.close();
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLySanPham.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return sp;
    }
    
    public List<SanPham> LaySanPhamTheoLoai(int MaLoaiSanPham)
    {
        Connection connection = null;
        ResultSet rs = null;
        List<SanPham> lst = new ArrayList<SanPham>();
        try
        {
            DataConnectManager dataConnnectManager = new DataConnectManager();
            connection =  dataConnnectManager.getConnection();
            
            if (connection != null)
            {
                String strSQL = String.format("SELECT * FROM SanPham WHERE MaLoaiSanPham = %d", MaLoaiSanPham);
                rs =  dataConnnectManager.getDataTable(strSQL, connection);
                while(rs.next())
                {
                    SanPham sp = new SanPham();
                    sp.setMaSanPham(rs.getString("MaSanPham"));
                    sp.setTenSanPham(rs.getString("TenSanPham"));
                    sp.setHinhURL(rs.getString("HinhURL").toString());
                    sp.setGiaSanPham(rs.getDouble("GiaSanPham"));
                    sp.setNgayNhap(rs.getString("NgayNhap"));
                    sp.setSoLuongTon((rs.getInt("SoLuongTon")));
                    sp.setSoLuongBan((rs.getInt("SoLuongBan")));
                    sp.setSoLuocXem((rs.getInt("SoLuocXem")));
                    sp.setMoTa(rs.getString("MoTa"));
                    sp.setBiXoa(rs.getInt("BiXoa"));
                    sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
                    sp.setMaHangSanXuat(rs.getInt("MaHangSanXuat"));
                    lst.add(sp);
                }
            }
            
            
            
        }
        catch(Exception e)
        {
        
        }
        finally {
            if (connection != null) {
                try {
                    rs.close();
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLySanPham.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return lst;


    }
    public static List<Trang> lsT1 = new ArrayList<Trang>();
    public int PageFocus(String pagefocus, int DK)
    {
        if(pagefocus.equals("Previos") || pagefocus.equals("Next"))
        {
            for (int i = 0; i < lsT1.size(); i++) {
                if(lsT1.get(i).getStatus() == "page-item active")
                {
                    if(DK == 0)
                    {
                        lsT1.get(i).setStatus("page-item");
                    }
                    if(pagefocus.equals("Previos"))
                        return Integer.parseInt(lsT1.get(i).getSoTrang()) - 1;
                    else
                        return Integer.parseInt(lsT1.get(i).getSoTrang()) + 1;
                }
            }
        }
        else
        {
            for (int j = 0; j < lsT1.size(); j++) {
                if(lsT1.get(j).getStatus() == "page-item active")
                {
                    if(DK == 0)
                    {
                        lsT1.get(j).setStatus("page-item");
                    }
                }
            }
        }
        return Integer.parseInt( pagefocus);
    }
    public List<Trang> GetTrang(String pagefocus)
    {
        int Pagefocus = PageFocus(pagefocus, 0);
        int sotrang = getAllSanPham().size() / 5 == 0 ? getAllSanPham().size() / 5: getAllSanPham().size() / 5+1;
        int begin = Pagefocus >=6 ? Pagefocus -5 : 0;
        for ( int i = 0; i < 7; i++) {
            Trang item = new Trang();
            item.setSoTrang(Integer.toString(begin));
            item.setStatus("page-item");
            if(lsT1.size() < 7)
                lsT1.add(item);
            begin++;
        }

        lsT1.get(Pagefocus).setStatus("page-item active");
        if(Pagefocus == 5)
        {
            lsT1.get(6).setStatus("page-item  disabled");
        }
        else
        {
            lsT1.get(6).setSoTrang("Next");
            lsT1.get(6).setStatus("page-item");
        }
        if (Pagefocus == 1)
        {
            lsT1.get(0).setSoTrang("Previos");
            lsT1.get(0).setStatus("page-item  disabled");
        }
        else
        {
            lsT1.get(0).setSoTrang("Previos");
            lsT1.get(0).setStatus("page-item");
        }
        return lsT1;
    }
    
    public SanPham LayChiTietSanPham(String MaSanPham)
    {
        Connection connection = null;
        ResultSet rs = null;
        SanPham sp = new SanPham();
        try
        {
            DataConnectManager dataConnnectManager = new DataConnectManager();
            connection =  dataConnnectManager.getConnection();
            
            if (connection != null)
            {
                String strSQL = String.format("SELECT * FROM `sanpham` WHERE MaSanPham = %s", MaSanPham);
                rs =  dataConnnectManager.getDataTable(strSQL, connection);
                while(rs.next())
                {
              
                    sp.setMaSanPham(rs.getString("MaSanPham"));
                    sp.setTenSanPham(rs.getString("TenSanPham"));
                    sp.setHinhURL(rs.getString("HinhURL").toString());
                    sp.setGiaSanPham(rs.getDouble("GiaSanPham"));
                    sp.setNgayNhap(rs.getString("NgayNhap"));
                    sp.setSoLuongTon((rs.getInt("SoLuongTon")));
                    sp.setSoLuongBan((rs.getInt("SoLuongBan")));
                    sp.setSoLuocXem((rs.getInt("SoLuocXem")));
                    sp.setMoTa(rs.getString("MoTa"));
                    sp.setBiXoa(rs.getInt("BiXoa"));
                    sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
                    sp.setMaHangSanXuat(rs.getInt("MaHangSanXuat"));
                    
                }
            }
            
            
            
        }
        catch(Exception e)
        {
        
        }
        finally {
            if (connection != null) {
                try {
                    rs.close();
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLySanPham.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return sp;
    }
    
    public List<SanPham> TimKiemSanPham(String SearchName)
    {
        Connection connection = null;
        ResultSet rs = null;
        PreparedStatement smt = null;
        List<SanPham> lst = new ArrayList<SanPham>();
        try
        {
            DataConnectManager dataConnnectManager = new DataConnectManager();
            connection =  dataConnnectManager.getConnection();
            
            if (connection != null)
            {
                
                /*String strSQL = "SELECT * FROM sanpham WHERE TenSanPham ='"+SearchName+"'";
                connection =  dataConnnectManager.getConnection();*/
                String strSQL = "SELECT * FROM sanpham WHERE TenSanPham LIKE ?";
                smt = connection.prepareStatement(strSQL);
                smt.setString(1, "%"+ SearchName +"%");
                rs = smt.executeQuery();
                while(rs.next())
                {                  
                    SanPham sp = new SanPham();
                    sp.setMaSanPham(rs.getString("MaSanPham"));
                    sp.setTenSanPham(rs.getString("TenSanPham"));
                    sp.setHinhURL(rs.getString("HinhURL").toString());
                    sp.setGiaSanPham(rs.getDouble("GiaSanPham"));
                    sp.setNgayNhap(rs.getString("NgayNhap"));
                    sp.setSoLuongTon((rs.getInt("SoLuongTon")));
                    sp.setSoLuongBan((rs.getInt("SoLuongBan")));
                    sp.setSoLuocXem((rs.getInt("SoLuocXem")));
                    sp.setMoTa(rs.getString("MoTa"));
                    sp.setBiXoa(rs.getInt("BiXoa"));
                    sp.setMaLoaiSanPham(rs.getInt("MaLoaiSanPham"));
                    sp.setMaHangSanXuat(rs.getInt("MaHangSanXuat"));
                    lst.add(sp);
                }
            }           
        }
        catch(Exception e)
        {
        
        }
        finally {
            if (connection != null) {
                try {
                    rs.close();
                    connection.close();
                } catch (SQLException ex) {
                    Logger.getLogger(QuanLySanPham.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return lst;
    }
    
}