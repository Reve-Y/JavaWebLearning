package beans;

public class UserDao {
    public boolean userLogin(Users u){
        String s = "admin";
        if(s.equals(u.getUsername()) && s.equals(u.getPassword()))
            return true;
        else
            return false;
    }
}
