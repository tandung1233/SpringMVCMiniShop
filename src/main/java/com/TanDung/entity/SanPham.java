package com.TanDung.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

//Hoc one to one hibernate sử dụng các anotision tên định danh
//Nhân viên có quan hệ 1 - n với sản phẩm
//Sản phẩm có quan hệ 1 - 1 với nhân viên
@Entity(name = "SanPham")
public class SanPham {
	// Cái này là one to many
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int idSanPham;
//	private String tenSanPham;
//	private String giaTien;
////	private int idNhanVien;//Bỏ cái này bởi vì trùng tên cột
//// cascade = CascadeType.ALL  nó thêm luôn cả nhân viên và sản phẩm
//	@OneToOne(cascade = CascadeType.ALL) // Thêm cái này để nói rằng sản phẩm có quan hệ 1 - 1 với nhân viên
//	@JoinColumn(name = "idNhanVien") // Thêm cái này để biết liên kết nhờ cột nào
//	private NhanVien nhanVien;

// Cái này là many to many	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idSanPham;
	private String tenSanPham;
	private String giaTien;
//	private int idNhanVien;//Bỏ cái này bởi vì trùng tên cột
// cascade = CascadeType.ALL  nó thêm luôn cả nhân viên và sản phẩm
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "nhanvien_sanpham", joinColumns = {
			@JoinColumn(name = "idSanPham", referencedColumnName = "idSanPham") }, inverseJoinColumns = {
					@JoinColumn(name = "idNhanVien", referencedColumnName = "idNhanVien") })
	private Set<NhanVien> nhanVien;

	public Set<NhanVien> getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(Set<NhanVien> nhanVien) {
		this.nhanVien = nhanVien;
	}

	public String getGiaTien() {
		return giaTien;
	}

	public void setGiaTien(String giaTien) {
		this.giaTien = giaTien;
	}

	public int getIdSanPham() {
		return idSanPham;
	}

	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

}
