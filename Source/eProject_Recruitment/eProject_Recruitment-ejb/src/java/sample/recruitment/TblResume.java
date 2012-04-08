/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author JunF
 */
@Entity
@Table(name = "tblResume", catalog = "Recruitment", schema = "dbo")
@NamedQueries({
    @NamedQuery(name = "TblResume.findAll", query = "SELECT t FROM TblResume t"),
    @NamedQuery(name = "TblResume.findByResumeId", query = "SELECT t FROM TblResume t WHERE t.resumeId = :resumeId"),
    @NamedQuery(name = "TblResume.findByDegree", query = "SELECT t FROM TblResume t WHERE t.degree = :degree"),
    @NamedQuery(name = "TblResume.findBySkills", query = "SELECT t FROM TblResume t WHERE t.skills = :skills"),
    @NamedQuery(name = "TblResume.findByExperience", query = "SELECT t FROM TblResume t WHERE t.experience = :experience"),
    @NamedQuery(name = "TblResume.findByOthers", query = "SELECT t FROM TblResume t WHERE t.others = :others")})
public class TblResume implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ResumeId", nullable = false, length = 5)
    private String resumeId;
    @Column(name = "Degree", length = 20)
    private String degree;
    @Column(name = "Skills", length = 250)
    private String skills;
    @Column(name = "Experience")
    private Integer experience;
    @Column(name = "Others", length = 500)
    private String others;
    @OneToMany(mappedBy = "tblResume")
    private Collection<TblApplicantVacancy> tblApplicantVacancyCollection;

    public TblResume() {
    }
    public TblResume(String resumeId) {
        this.resumeId = resumeId;
    }

    public String getResumeId() {
        return resumeId;
    }

    public void setResumeId(String resumeId) {
        this.resumeId = resumeId;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
    }

    public Collection<TblApplicantVacancy> getTblApplicantVacancyCollection() {
        return tblApplicantVacancyCollection;
    }

    public void setTblApplicantVacancyCollection(Collection<TblApplicantVacancy> tblApplicantVacancyCollection) {
        this.tblApplicantVacancyCollection = tblApplicantVacancyCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (resumeId != null ? resumeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblResume)) {
            return false;
        }
        TblResume other = (TblResume) object;
        if ((this.resumeId == null && other.resumeId != null) || (this.resumeId != null && !this.resumeId.equals(other.resumeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblResume[resumeId=" + resumeId + "]";
    }

}
