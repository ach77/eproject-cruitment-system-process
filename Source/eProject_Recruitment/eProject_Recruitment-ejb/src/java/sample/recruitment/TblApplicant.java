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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author JunF
 */
@Entity
@Table(name = "tblApplicant", catalog = "Recruitment", schema = "dbo")
@NamedQueries({
    @NamedQuery(name = "TblApplicant.findAll", query = "SELECT t FROM TblApplicant t"),
    @NamedQuery(name = "TblApplicant.findByApplicantId", query = "SELECT t FROM TblApplicant t WHERE t.applicantId = :applicantId"),
    @NamedQuery(name = "TblApplicant.findByFullname", query = "SELECT t FROM TblApplicant t WHERE t.fullname = :fullname"),
    @NamedQuery(name = "TblApplicant.findByDateofBirth", query = "SELECT t FROM TblApplicant t WHERE t.dateofBirth = :dateofBirth"),
    @NamedQuery(name = "TblApplicant.findByGender", query = "SELECT t FROM TblApplicant t WHERE t.gender = :gender"),
    @NamedQuery(name = "TblApplicant.findByAddress", query = "SELECT t FROM TblApplicant t WHERE t.address = :address"),
    @NamedQuery(name = "TblApplicant.findByPhone", query = "SELECT t FROM TblApplicant t WHERE t.phone = :phone"),
    @NamedQuery(name = "TblApplicant.findByEmail", query = "SELECT t FROM TblApplicant t WHERE t.email = :email"),
    @NamedQuery(name = "TblApplicant.findByStatus", query = "SELECT t FROM TblApplicant t WHERE t.status = :status"),
    @NamedQuery(name = "TblApplicant.findByIsDelete", query = "SELECT t FROM TblApplicant t WHERE t.isDelete = :isDelete")})
public class TblApplicant implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ApplicantId", nullable = false, length = 5)
    private String applicantId;
    @Basic(optional = false)
    @Column(name = "Fullname", nullable = false, length = 50)
    private String fullname;
    @Basic(optional = false)
    @Column(name = "DateofBirth", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateofBirth;
    @Basic(optional = false)
    @Column(name = "Gender", nullable = false)
    private boolean gender;
    @Basic(optional = false)
    @Column(name = "Address", nullable = false, length = 250)
    private String address;
    @Basic(optional = false)
    @Column(name = "Phone", nullable = false, length = 20)
    private String phone;
    @Basic(optional = false)
    @Column(name = "Email", nullable = false, length = 50)
    private String email;
    @Basic(optional = false)
    @Column(name = "Status", nullable = false, length = 20)
    private String status;
    @Basic(optional = false)
    @Column(name = "isDelete", nullable = false)
    private boolean isDelete;
    @OneToMany(mappedBy = "tblApplicant")
    private Collection<TblApplicantVacancy> tblApplicantVacancyCollection;
    @JoinColumn(name = "ApplicantId", referencedColumnName = "Username", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private TblAccount tblAccount;

    public TblApplicant() {
    }

    public TblApplicant(String applicantId) {
        this.applicantId = applicantId;
    }

    public TblApplicant(String applicantId, String fullname, Date dateofBirth, boolean gender, String address, String phone, String email, String status, boolean isDelete) {
        this.applicantId = applicantId;
        this.fullname = fullname;
        this.dateofBirth = dateofBirth;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.isDelete = isDelete;
    }

    public String getApplicantId() {
        return applicantId;
    }

    public void setApplicantId(String applicantId) {
        this.applicantId = applicantId;
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

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(boolean isDelete) {
        this.isDelete = isDelete;
    }

    public Collection<TblApplicantVacancy> getTblApplicantVacancyCollection() {
        return tblApplicantVacancyCollection;
    }

    public void setTblApplicantVacancyCollection(Collection<TblApplicantVacancy> tblApplicantVacancyCollection) {
        this.tblApplicantVacancyCollection = tblApplicantVacancyCollection;
    }

    public TblAccount getTblAccount() {
        return tblAccount;
    }

    public void setTblAccount(TblAccount tblAccount) {
        this.tblAccount = tblAccount;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (applicantId != null ? applicantId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblApplicant)) {
            return false;
        }
        TblApplicant other = (TblApplicant) object;
        if ((this.applicantId == null && other.applicantId != null) || (this.applicantId != null && !this.applicantId.equals(other.applicantId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblApplicant[applicantId=" + applicantId + "]";
    }

}
