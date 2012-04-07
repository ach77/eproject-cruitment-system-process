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

    public boolean checkLogin(String username, String password) {
        String sql = "SELECT t FROM TblAccount t WHERE t.username = :username AND t.password = :password";
        Query query = em.createQuery(sql);
        query.setParameter("username", username);
        query.setParameter("password", password);
        List result = query.getResultList();
        if (result.isEmpty()) {
            return false;
        }
        return true;
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
