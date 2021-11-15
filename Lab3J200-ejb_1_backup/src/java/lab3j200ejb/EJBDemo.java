/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3j200ejb;

import javax.ejb.Local;

/**
 *
 * @author User
 */
@Local
public interface EJBDemo {

    boolean login(String login, String psw);

    String getMessage(String login);
    
}
