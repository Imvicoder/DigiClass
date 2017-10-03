public class Student {

    private String AccessCode,FirstName, LastName, Email, Sex, Password,userRole;

    public String getAccessCode() {
        return AccessCode;
    }

    public void setAccessCode(String accesscode) {
        this.AccessCode = accesscode;
    }
    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String fname) {
        this.FirstName = fname;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lname) {
        this.LastName = lname;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        this.Sex = sex;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        this.Password = password;
    }
    public void setuserRole(String userrole) {
    	this.userRole=userrole;
    }
    public String getuserRole() {
    	return userRole;
    }
}

