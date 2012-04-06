/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

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
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
 
}
