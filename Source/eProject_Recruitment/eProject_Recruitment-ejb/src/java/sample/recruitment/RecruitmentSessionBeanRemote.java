/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package sample.recruitment;

import java.util.List;
import javax.ejb.Remote;

/**
 *
 * @author 6789
 */
@Remote
public interface RecruitmentSessionBeanRemote {

    int checkLogin(String username, String password);

    List getVacancyListHR();


    
}
