/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3j200ejb;

import javax.annotation.PostConstruct;
import javax.ejb.Stateful;

/**
 *
 * @author User
 */
@Stateful
public class Registrator implements EJBDemo, StandardValues {

    private boolean registered;
    private int count = -1;
    private String msg;
    private String validLogin;

    @PostConstruct
    void init() {
        registered = false;
        System.out.println("---> registrator created");
    }

    @Override
    public boolean login(String login, String psw) {
        if(count <=3){
           registered = LOGIN.equals(login) && PSW.equals(psw);
           if(registered) validLogin = login;
        System.out.println("---> LOG PSW Check " + login + " " + psw + "=== " + registered);

        return registered; 
        }else{
            validLogin = " ";
           
            return registered = false;
        }
        
    }

    @Override
    public String getMessage(String login) {
        if (!login.equals(validLogin) || count >= 3) {
            count = 0;
            return msg = "Not registered";
        } else {
           count++;

          return msg = " Сообщение успешно получено " + count;
        }

    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

}
