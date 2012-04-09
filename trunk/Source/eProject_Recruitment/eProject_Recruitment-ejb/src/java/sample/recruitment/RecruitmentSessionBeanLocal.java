/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.util.Date;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author 6789;;
 */
@Local
public interface RecruitmentSessionBeanLocal {

    int checkLogin(String username, String password);

    List getVacancyListHR();

    List getHomepage(String name,String department);

    boolean register(String username, String password, String fullanme, boolean gender, Date birth, String phone, String email, String address);

    boolean applyVacancy(String degree, String skill, int experience, String vacancy, String username, String applieddate, String other);

    String generateResumeID();

    List getApplicantListHR();

 

    
}
