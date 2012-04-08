/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author 6789
 */
@Local
public interface RecruitmentSessionBeanLocal {

    int checkLogin(String username, String password);

    List getVacancyListHR();

 

    
}
