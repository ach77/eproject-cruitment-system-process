/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.recruitment;

import java.util.Date;
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
            return 3; // interviewer
        }
    }

    

    public List getHomepage(String name, String department) {
        Query q = em.createNativeQuery("{sp_AGetVacancyByNameAndDepartment}", sample.recruitment.TblVacancy.class);
        q.setParameter("@name", name);
        q.setParameter("@department", name);
        List result = q.getResultList();
        return result;
    }

    public boolean register(String username, String password, String fullanme, boolean gender, Date birth, String phone, String email, String address) {
        TblAccount acc = new TblAccount(username, password, false);
        TblApplicant app = new TblApplicant(username, fullanme, birth, gender, address, phone, email,
                "not in process", false);
        acc.setTblApplicant(app);
        app.setTblAccount(acc);
        em.persist(acc);
        return true;
    }

    public boolean applyVacancy(String degree, String skill, int experience, String vacancy
            , String username, String applieddate, String other) {
        String id=generateResumeID();
        TblResume resume = new TblResume(id);
       resume.setDegree(degree);
       resume.setExperience(experience);
       resume.setOthers(other);
       resume.setSkills(skill);
       TblApplicant app=em.find(TblApplicant.class, username);
       TblVacancy vacancy1=em.find(TblVacancy.class, vacancy);
       TblApplicantVacancy av=new TblApplicantVacancy();
       av.setApplieddate(new Date(System.currentTimeMillis()));
       av.setState("process");
       av.setTblResume(resume);
       av.setTblVacancy(vacancy1);
       av.setTblApplicant(app);
       em.persist(av);
        return true;
    }

    public String generateResumeID() {
        Query q = em.createNamedQuery("select count * from tblResume");
        int temp = (Integer) q.getSingleResult()+1;
        if (temp < 10) {
            return "R000" + temp ;
        } else if (temp < 100) {
            return "R00" + temp;
        } else if (temp < 1000) {
            return "R0" + temp;
        } else if (temp < 10000) {
            return "R" + temp;
        }
        return null;
    }
    // HR Group area
    public List getApplicantListHR() {
        Query query = em.createNativeQuery("{call sp_HRGetApplicantList}", sample.recruitment.TblApplicantVacancy.class);
        List result = query.getResultList();
        return result;
    }
    public List getVacancyListHR() {
        Query query = em.createNativeQuery("{call sp_HRGetVacancyList}", sample.recruitment.TblVacancy.class);
        List result = query.getResultList();
        return result;
    }

    public String getFinalVacancyIdHR() {
        Query query = em.createNativeQuery("{call sp_HRGetVacancyList}");
        System.out.println("sss"+query.getSingleResult().toString());
        return query.getSingleResult().toString();
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
