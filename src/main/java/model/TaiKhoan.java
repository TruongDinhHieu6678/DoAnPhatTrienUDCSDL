package model;

public class TaiKhoan {
    private int MaTaiKhoan ;
    private String TenDangNhap;
    private String MatKhau;
    private String TenHienThi;
    private String DiaChi;
    private String DienThoai;
    private String Email;
    private int XoaBo;
    private int MaLoaiTaiKhoan;

    public int getMaLoaiTaiKhoan() {
        return MaLoaiTaiKhoan;
    }

    public int getXoaBo() {
        return XoaBo;
    }

    public int getMaTaiKhoan() {
        return MaTaiKhoan;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public String getDienThoai() {
        return DienThoai;
    }

    public String getEmail() {
        return Email;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public String getTenDangNhap() {
        return TenDangNhap;
    }

    public String getTenHienThi() {
        return TenHienThi;
    }

    public void setDiaChi(String diaChi) {
        DiaChi = diaChi;
    }

    public void setDienThoai(String dienThoai) {
        DienThoai = dienThoai;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public void setMaLoaiTaiKhoan(int maLoaiTaiKhoan) {
        MaLoaiTaiKhoan = maLoaiTaiKhoan;
    }

    public void setMaTaiKhoan(int maTaiKhoan) {
        MaTaiKhoan = maTaiKhoan;
    }

    public void setMatKhau(String matKhau) {
        MatKhau = matKhau;
    }

    public void setTenDangNhap(String tenDangNhap) {
        TenDangNhap = tenDangNhap;
    }

    public void setTenHienThi(String tenHienThi) {
        TenHienThi = tenHienThi;
    }

    public void setXoaBo(int xoaBo) {
        XoaBo = xoaBo;
    }

    @Override
    public String toString() {
        return "TaiKhoan{" +
                "MaTaiKhoan=" + MaTaiKhoan +
                ", TenDangNhap='" + TenDangNhap + '\'' +
                ", MatKhau='" + MatKhau + '\'' +
                ", TenHienThi='" + TenHienThi + '\'' +
                ", DiaChi='" + DiaChi + '\'' +
                ", DienThoai='" + DienThoai + '\'' +
                ", Email='" + Email + '\'' +
                ", XoaBo=" + XoaBo +
                ", MaLoaiTaiKhoan=" + MaLoaiTaiKhoan +
                '}';
    }
}
