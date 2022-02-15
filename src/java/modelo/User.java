
package modelo;

import java.io.Serializable;


public class User implements Serializable{
    String name;
    int age;
    String correo;

    public User() {
    }

    public User(String name, int age, String correo) {
        this.name = name;
        this.age = age;
        this.correo = correo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    @Override
    public String toString() {
        return "User{" + "name=" + name + ", age=" + age + ", correo=" + correo + '}';
    }

    
    
}
