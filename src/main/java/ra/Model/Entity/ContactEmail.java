package ra.Model.Entity;public class ContactEmail {    private int contactEmailID  ;    private String name;    private String email;    private String subject;    private String message;    public ContactEmail() {    }    public int getContactEmailID() {        return contactEmailID;    }    public void setContactEmailID(int contactEmailID) {        this.contactEmailID = contactEmailID;    }    public String getName() {        return name;    }    public void setName(String name) {        this.name = name;    }    public String getEmail() {        return email;    }    public void setEmail(String email) {        this.email = email;    }    public String getSubject() {        return subject;    }    public void setSubject(String subject) {        this.subject = subject;    }    public String getMessage() {        return message;    }    public void setMessage(String message) {        this.message = message;    }    public ContactEmail(int contactEmailID, String name, String email, String subject, String message) {        this.contactEmailID = contactEmailID;        this.name = name;        this.email = email;        this.subject = subject;        this.message = message;    }}