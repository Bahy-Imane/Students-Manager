package modeles;

public class Student {
    private String id;
    private String lastName;
    private String name;
    private String email;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Student() {
    }

    public Student(String id, String lastName, String name, String email) {
        this.id = id;
        this.lastName = lastName;
        this.name = name;
        this.email = email;
    }
}
