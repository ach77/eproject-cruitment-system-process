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
@Table(name = "tblDepartment", catalog = "Recruitment", schema = "dbo")
@NamedQueries({
    @NamedQuery(name = "TblDepartment.findAll", query = "SELECT t FROM TblDepartment t"),
    @NamedQuery(name = "TblDepartment.findByDepartmentId", query = "SELECT t FROM TblDepartment t WHERE t.departmentId = :departmentId"),
    @NamedQuery(name = "TblDepartment.findByDerpartmentname", query = "SELECT t FROM TblDepartment t WHERE t.derpartmentname = :derpartmentname"),
    @NamedQuery(name = "TblDepartment.findByDescription", query = "SELECT t FROM TblDepartment t WHERE t.description = :description")})
public class TblDepartment implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "DepartmentId", nullable = false, length = 5)
    private String departmentId;
    @Column(name = "Derpartmentname", length = 30)
    private String derpartmentname;
    @Column(name = "Description", length = 50)
    private String description;
    @OneToMany(mappedBy = "tblDepartment")
    private Collection<TblEmployee> tblEmployeeCollection;
    @OneToMany(mappedBy = "tblDepartment")
    private Collection<TblVacancy> tblVacancyCollection;

    public TblDepartment() {
    }

    public TblDepartment(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getDerpartmentname() {
        return derpartmentname;
    }

    public void setDerpartmentname(String derpartmentname) {
        this.derpartmentname = derpartmentname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Collection<TblEmployee> getTblEmployeeCollection() {
        return tblEmployeeCollection;
    }

    public void setTblEmployeeCollection(Collection<TblEmployee> tblEmployeeCollection) {
        this.tblEmployeeCollection = tblEmployeeCollection;
    }

    public Collection<TblVacancy> getTblVacancyCollection() {
        return tblVacancyCollection;
    }

    public void setTblVacancyCollection(Collection<TblVacancy> tblVacancyCollection) {
        this.tblVacancyCollection = tblVacancyCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (departmentId != null ? departmentId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblDepartment)) {
            return false;
        }
        TblDepartment other = (TblDepartment) object;
        if ((this.departmentId == null && other.departmentId != null) || (this.departmentId != null && !this.departmentId.equals(other.departmentId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblDepartment[departmentId=" + departmentId + "]";
    }

}
