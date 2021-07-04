package model;

public class Trang {
    private int SoTrang;
    private String Status;

    public int getSoTrang() {
        return SoTrang;
    }

    public String getStatus() {
        return Status;
    }

    public void setSoTrang(int soTrang) {
        SoTrang = soTrang;
    }

    public void setStatus(String status) {
        Status = status;
    }

    @Override
    public String toString() {
        return "Trang{" +
                "SoTrang=" + SoTrang +
                ", Status='" + Status + '\'' +
                '}';
    }
}
