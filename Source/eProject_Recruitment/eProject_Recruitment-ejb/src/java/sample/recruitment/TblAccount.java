/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author 6789
 */
@Entity
@Table(name = "tblAccount", catalog = "Recruitment", schema = "dbo")
@NamedQueries({
    @NamedQuery(name = "TblAccount.findAll", query = "SELECT t FROM TblAccount t")})
//    @NamedQuery(name = "TblAccount.findByUsername", query = "SELECT t FROM TblAccount t WHERE t.username = :username"),
//    @NamedQuery(name = "TblAccount.findByPassword", query = "SELECT t FROM TblAccount t WHERE t.password = :password"),
//    @NamedQuery(name = "TblAccount.findByIsDelete", query = "SELECT t FROM TblAccount t WHERE t.isDelete = :isDelete")})
public class TblAccount implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Username", nullable = false, length = 5)
    private String username;

    @Basic(optional = false)
    @Column(name = "Password", nullable = false, length = 20)
    private String password;
    @Basic(optional = false)
    @Column(name = "isDelete", nullable = false)
    private boolean isDelete;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "tblAccount")
    private TblEmployee tblEmployee;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "tblAccount")
    private TblApplicant tblApplicant;

    public TblAccount() {
    }

    public TblAccount(String username) {
        this.username = username;
    }

    public TblAccount(String username, String password, boolean isDelete) {
        this.username = username;
        this.password = password;
        this.isDelete = isDelete;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(boolean isDelete) {
        this.isDelete = isDelete;
    }

    public TblEmployee getTblEmployee() {
        return tblEmployee;
    }

    public void setTblEmployee(TblEmployee tblEmployee) {
        this.tblEmployee = tblEmployee;
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
        hash += (username != null ? username.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblAccount)) {
            return false;
        }
        TblAccount other = (TblAccount) object;
        if ((this.username == null && other.username != null) || (this.username != null && !this.username.equals(other.username))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sample.recruitment.TblAccount[username=" + username + "]";
    }

}
