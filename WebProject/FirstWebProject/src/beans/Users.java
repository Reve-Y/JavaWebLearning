package beans;

import javax.jws.soap.SOAPBinding;

/**
 * 一个JavaBean类的demo
 */
public class Users {
    public Users(){
        //this.password = "null";
        //this.username = "null";
    }

    private String username ;
    private String password ;

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
}
