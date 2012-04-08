/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 *
 * @author JunF
 */
@Entity
@Table(name = "tblSchedule", catalog = "Recruitment", schema = "dbo", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"Executiondate"})})
@NamedQueries({
    @NamedQuery(name = "TblSchedule.findAll", query = "SELECT t FROM TblSchedule t"),
    @NamedQuery(name = "TblSchedule.findByVacancy", query = "SELECT t FROM TblSchedule t WHERE t.vacancy = :vacancy"),
    @NamedQuery(name = "TblSchedule.findByExecutiondate", query = "SELECT t FROM TblSchedule t WHERE t.executiondate = :executiondate"),
    @NamedQuery(name = "TblSchedule.findByIsChange", query = "SELECT t FROM TblSchedule t WHERE t.isChange = :isChange"),
    @NamedQuery(name = "TblSchedule.findByIsDelete", query = "SELECT t FROM TblSchedule t WHERE t.isDelete = :isDelete")})
public class TblSchedule implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Vacancy", nullable = false, length = 5)
    private String vacancy;
    @Column(name = "Executiondate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date executiondate;
    @Column(name = "isChange")
    private Boolean isChange;
    @Column(name = "isDelete")
    private Boolean isDelete;
    @JoinColumn(name = "Vacancy", referencedColumnName = "VacancyId", nullable = false, insertable = false, updatable = false)
    @OneToOne(optional = false)
    private TblVacancy tblVacancy;
    @JoinColumn(name = "Interviewer", referencedColumnName = "EmployeeId")
    @ManyToOne
    private TblEmployee tblEmployee;

    public TblSchedule() {
    }

    public TblSchedule(String vacancy) {
        this.vacancy = vacancy;
    }

    public String getVacancy() {
        return vacancy;
    }

    public void setVacancy(String vacancy) {
        this.vacancy = vacancy;
    }

    public Date getExecutiondate() {
        return executiondate;
    }

    public void setExecutiondate(Date executiondate) {
        this.executiondate = executiondate;
    }

    public Boolean getIsChange() {
        return isChange;
    }

    public void setIsChange(Boolean isChange) {
        this.isChange = isChange;
    }

    public Boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Boolean isDelete) {
        this.isDelete = isDelete;
    }

    public TblVacancy getTblVacancy() {
        return tblVacancy;
    }

    public void setTblVacancy(TblVacancy tblVacancy) {
        this.tblVacancy = tblVacancy;
    }

    public TblEmployee getTblEmployee() {
        return tblEmployee;
    }

    public void setTblEmployee(TblEmployee tblEmployee) {
        this.tblEmployee = tblEmployee;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vacancy != null ? vacancy.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblSchedule)) {
            return false;
        }
        TblSchedule other = (TblSchedule) object;
        if ((this.vacancy == null && other.vacancy != null) || (this.vacancy != null && !this.vacancy.equals(other.vacancy))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblSchedule[vacancy=" + vacancy + "]";
    }

}
