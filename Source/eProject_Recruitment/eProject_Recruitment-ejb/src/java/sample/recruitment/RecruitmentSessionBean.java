/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.recruitment;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author 6789
 */
@Stateless
public class RecruitmentSessionBean implements RecruitmentSessionBeanRemote, RecruitmentSessionBeanLocal {

    @PersistenceContext(unitName = "eProject_Recruitment-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public int checkLogin(String username, String password) {
        String sql = "SELECT t FROM TblAccount t "
                + "WHERE t.username = :username "
                + "AND t.password = :password "
                + "AND t.isDelete=:isDelete";
        Query query = em.createQuery(sql);
        query.setParameter("username", username);
        query.setParameter("password", password);
        query.setParameter("isDelete", false);
        List result = query.getResultList();
        if (result.isEmpty()) {
            return 0; // sai username or password
        } else {
            boolean rs = username.startsWith("A");
            if (rs) {
                return 1; // la applicant
            }
            sql = "SELECT t FROM TblEmployee t "
                    + "WHERE t.employeeId = :employeeId AND"
                    + " t.isDelete=:isDelete AND t.Department=:Department";
            query = em.createQuery(sql);
            query.setParameter("employeeId", username);
            query.setParameter("isDelete", false);
            query.setParameter("Department", "D0001"); // la HR
            result = query.getResultList();
            if (!result.isEmpty()) {
                return 2;
            }
            return 3;
        }
    }

    public List getVacancyListHR() {
        Query query = em.createNativeQuery("{call sp_HRGetVacancyList}",sample.recruitment.TblVacancy.class);
        List result = query.getResultList();
        return result;
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
