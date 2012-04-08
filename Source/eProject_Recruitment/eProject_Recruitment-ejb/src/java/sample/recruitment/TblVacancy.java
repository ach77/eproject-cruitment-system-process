/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
 * @author JunF
 */
@Entity
@Table(name = "tblVacancy", catalog = "Recruitment", schema = "dbo")
@NamedQueries({
    @NamedQuery(name = "TblVacancy.findAll", query = "SELECT t FROM TblVacancy t"),
    @NamedQuery(name = "TblVacancy.findByVacancyId", query = "SELECT t FROM TblVacancy t WHERE t.vacancyId = :vacancyId"),
    @NamedQuery(name = "TblVacancy.findByTitle", query = "SELECT t FROM TblVacancy t WHERE t.title = :title"),
    @NamedQuery(name = "TblVacancy.findByRequirement", query = "SELECT t FROM TblVacancy t WHERE t.requirement = :requirement"),
    @NamedQuery(name = "TblVacancy.findByDescription", query = "SELECT t FROM TblVacancy t WHERE t.description = :description"),
    @NamedQuery(name = "TblVacancy.findBySalary", query = "SELECT t FROM TblVacancy t WHERE t.salary = :salary"),
    @NamedQuery(name = "TblVacancy.findBySlot", query = "SELECT t FROM TblVacancy t WHERE t.slot = :slot"),
    @NamedQuery(name = "TblVacancy.findByStartdate", query = "SELECT t FROM TblVacancy t WHERE t.startdate = :startdate"),
    @NamedQuery(name = "TblVacancy.findByEnddate", query = "SELECT t FROM TblVacancy t WHERE t.enddate = :enddate"),
    @NamedQuery(name = "TblVacancy.findByStatus", query = "SELECT t FROM TblVacancy t WHERE t.status = :status"),
    @NamedQuery(name = "TblVacancy.findByIsDelete", query = "SELECT t FROM TblVacancy t WHERE t.isDelete = :isDelete")})
public class TblVacancy implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "VacancyId", nullable = false, length = 5)
    private String vacancyId;
    @Basic(optional = false)
    @Column(name = "Title", nullable = false, length = 50)
    private String title;
    @Basic(optional = false)
    @Column(name = "Requirement", nullable = false, length = 500)
    private String requirement;
    @Column(name = "Description", length = 500)
    private String description;
    @Basic(optional = false)
    @Column(name = "Salary", nullable = false, length = 20)
    private String salary;
    @Basic(optional = false)
    @Column(name = "Slot", nullable = false)
    private int slot;
    @Basic(optional = false)
    @Column(name = "Startdate", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date startdate;
    @Basic(optional = false)
    @Column(name = "Enddate", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date enddate;
    @Basic(optional = false)
    @Column(name = "Status", nullable = false, length = 20)
    private String status;
    @Basic(optional = false)
    @Column(name = "isDelete", nullable = false)
    private boolean isDelete;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "tblVacancy")
    private TblSchedule tblSchedule;
    @OneToMany(mappedBy = "tblVacancy")
    private Collection<TblApplicantVacancy> tblApplicantVacancyCollection;
    @JoinColumn(name = "Department", referencedColumnName = "DepartmentId")
    @ManyToOne
    private TblDepartment tblDepartment;

    public TblVacancy() {
    }

    public TblVacancy(String vacancyId) {
        this.vacancyId = vacancyId;
    }

    public TblVacancy(String vacancyId, String title, String requirement, String salary, int slot, Date startdate, Date enddate, String status, boolean isDelete) {
        this.vacancyId = vacancyId;
        this.title = title;
        this.requirement = requirement;
        this.salary = salary;
        this.slot = slot;
        this.startdate = startdate;
        this.enddate = enddate;
        this.status = status;
        this.isDelete = isDelete;
    }

    public String getVacancyId() {
        return vacancyId;
    }

    public void setVacancyId(String vacancyId) {
        this.vacancyId = vacancyId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
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

    public TblSchedule getTblSchedule() {
        return tblSchedule;
    }

    public void setTblSchedule(TblSchedule tblSchedule) {
        this.tblSchedule = tblSchedule;
    }

    public Collection<TblApplicantVacancy> getTblApplicantVacancyCollection() {
        return tblApplicantVacancyCollection;
    }

    public void setTblApplicantVacancyCollection(Collection<TblApplicantVacancy> tblApplicantVacancyCollection) {
        this.tblApplicantVacancyCollection = tblApplicantVacancyCollection;
    }

    public TblDepartment getTblDepartment() {
        return tblDepartment;
    }

    public void setTblDepartment(TblDepartment tblDepartment) {
        this.tblDepartment = tblDepartment;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vacancyId != null ? vacancyId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblVacancy)) {
            return false;
        }
        TblVacancy other = (TblVacancy) object;
        if ((this.vacancyId == null && other.vacancyId != null) || (this.vacancyId != null && !this.vacancyId.equals(other.vacancyId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblVacancy[vacancyId=" + vacancyId + "]";
    }

}
