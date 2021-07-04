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