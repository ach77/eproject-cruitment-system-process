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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 *
 * @author 6789
 */
@Entity
@Table(name = "tblApplicantVacancy", catalog = "Recruitment", schema = "dbo", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"Applicant", "Resume"})})
@NamedQueries({
    @NamedQuery(name = "TblApplicantVacancy.findAll", query = "SELECT t FROM TblApplicantVacancy t")})
//    @NamedQuery(name = "TblApplicantVacancy.findById", query = "SELECT t FROM TblApplicantVacancy t WHERE t.id = :id"),
//    @NamedQuery(name = "TblApplicantVacancy.findByApplieddate", query = "SELECT t FROM TblApplicantVacancy t WHERE t.applieddate = :applieddate"),
//    @NamedQuery(name = "TblApplicantVacancy.findByIsDelete", query = "SELECT t FROM TblApplicantVacancy t WHERE t.isDelete = :isDelete"),
//    @NamedQuery(name = "TblApplicantVacancy.findByState", query = "SELECT t FROM TblApplicantVacancy t WHERE t.state = :state")})
public class TblApplicantVacancy implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Id", nullable = false)
    private Integer id;
    @Column(name = "Applieddate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date applieddate;
    @Column(name = "isDelete")
    private Boolean isDelete;
    @Basic(optional = false)
    @Column(name = "State", nullable = false, length = 20)
    private String state;
    @JoinColumn(name = "Vacancy", referencedColumnName = "VacancyId")
    @ManyToOne
    private TblVacancy tblVacancy;
    @JoinColumn(name = "Resume", referencedColumnName = "ResumeId")
    @ManyToOne
    private TblResume tblResume;
    @JoinColumn(name = "Applicant", referencedColumnName = "ApplicantId")
    @ManyToOne
    private TblApplicant tblApplicant;

    public TblApplicantVacancy() {
    }

    public TblApplicantVacancy(Integer id) {
        this.id = id;
    }

    public TblApplicantVacancy(Integer id, String state) {
        this.id = id;
        this.state = state;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getApplieddate() {
        return applieddate;
    }

    public void setApplieddate(Date applieddate) {
        this.applieddate = applieddate;
    }

    public Boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Boolean isDelete) {
        this.isDelete = isDelete;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public TblVacancy getTblVacancy() {
        return tblVacancy;
    }

    public void setTblVacancy(TblVacancy tblVacancy) {
        this.tblVacancy = tblVacancy;
    }

    public TblResume getTblResume() {
        return tblResume;
    }

    public void setTblResume(TblResume tblResume) {
        this.tblResume = tblResume;
    }

    public TblApplicant getTblApplicant() {
        return tblApplicant;
    }

    public void setTblApplicant(TblApplicant tblApplicant) {
        this.tblApplicant = tblApplicant;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblApplicantVacancy)) {
            return false;
        }
        TblApplicantVacancy other = (TblApplicantVacancy) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblApplicantVacancy[id=" + id + "]";
    }

}
