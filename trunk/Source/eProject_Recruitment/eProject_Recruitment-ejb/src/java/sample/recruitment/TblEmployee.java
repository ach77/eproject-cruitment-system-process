/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author 6789
 */
@Entity
@Table(name = "tblEmployee", catalog = "Recruitment", schema = "dbo")
@NamedQueries({
    @NamedQuery(name = "TblEmployee.findAll", query = "SELECT t FROM TblEmployee t")})
//    @NamedQuery(name = "TblEmployee.findByEmployeeId", query = "SELECT t FROM TblEmployee t WHERE t.employeeId = :employeeId"),
//    @NamedQuery(name = "TblEmployee.findByFullname", query = "SELECT t FROM TblEmployee t WHERE t.fullname = :fullname"),
//    @NamedQuery(name = "TblEmployee.findByDateofBirth", query = "SELECT t FROM TblEmployee t WHERE t.dateofBirth = :dateofBirth"),
//    @NamedQuery(name = "TblEmployee.findByGender", query = "SELECT t FROM TblEmployee t WHERE t.gender = :gender"),
//    @NamedQuery(name = "TblEmployee.findByAddress", query = "SELECT t FROM TblEmployee t WHERE t.address = :address"),
//    @NamedQuery(name = "TblEmployee.findByPhone", query = "SELECT t FROM TblEmployee t WHERE t.phone = :phone"),
//    @NamedQuery(name = "TblEmployee.findByEmail", query = "SELECT t FROM TblEmployee t WHERE t.email = :email"),
//    @NamedQuery(name = "TblEmployee.findByStartdate", query = "SELECT t FROM TblEmployee t WHERE t.startdate = :startdate"),
//    @NamedQuery(name = "TblEmployee.findByIsDelete", query = "SELECT t FROM TblEmployee t WHERE t.isDelete = :isDelete")})
public class TblEmployee implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "EmployeeId", nullable = false, length = 5)
    private String employeeId;
    @Column(name = "Fullname", length = 50)
    private String fullname;
    @Column(name = "DateofBirth")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateofBirth;
    @Column(name = "Gender")
    private Boolean gender;
    @Column(name = "Address", length = 250)
    private String address;
    @Column(name = "Phone", length = 20)
    private String phone;
    @Column(name = "Email", length = 50)
    private String email;
    @Column(name = "Startdate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date startdate;
    @Column(name = "isDelete")
    private Boolean isDelete;
    @JoinColumn(name = "Department", referencedColumnName = "DepartmentId")
    @ManyToOne
    private TblDepartment tblDepartment;
    @JoinColumn(name = "EmployeeId", referencedColumnName = "Username", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private TblAccount tblAccount;
    @OneToMany(mappedBy = "tblEmployee")
    private Collection<TblSchedule> tblScheduleCollection;

    public TblEmployee() {
    }

    public TblEmployee(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Date getDateofBirth() {
        return dateofBirth;
    }

    public void setDateofBirth(Date dateofBirth) {
        this.dateofBirth = dateofBirth;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Boolean isDelete) {
        this.isDelete = isDelete;
    }

    public TblDepartment getTblDepartment() {
        return tblDepartment;
    }

    public void setTblDepartment(TblDepartment tblDepartment) {
        this.tblDepartment = tblDepartment;
    }

    public TblAccount getTblAccount() {
        return tblAccount;
    }

    public void setTblAccount(TblAccount tblAccount) {
        this.tblAccount = tblAccount;
    }

    public Collection<TblSchedule> getTblScheduleCollection() {
        return tblScheduleCollection;
    }

    public void setTblScheduleCollection(Collection<TblSchedule> tblScheduleCollection) {
        this.tblScheduleCollection = tblScheduleCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (employeeId != null ? employeeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblEmployee)) {
            return false;
        }
        TblEmployee other = (TblEmployee) object;
        if ((this.employeeId == null && other.employeeId != null) || (this.employeeId != null && !this.employeeId.equals(other.employeeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblEmployee[employeeId=" + employeeId + "]";
    }

}
