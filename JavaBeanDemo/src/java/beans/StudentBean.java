/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author ghosh
 */
public class StudentBean {
    
    private String usn;
    
    private String name;

    private String course;

    /**
     * Get the value of course
     *
     * @return the value of course
     */
    public String getCourse() {
        return course;
    }

    /**
     * Set the value of course
     *
     * @param course new value of course
     */
    public void setCourse(String course) {
        this.course = course;
    }

    /**
     * Get the value of name
     *
     * @return the value of name
     */
    public String getName() {
        return name;
    }

    /**
     * Set the value of name
     *
     * @param name new value of name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get the value of usn
     * @return the value of usn
     */
    public String getUsn() {
        return usn;
    }

    /**
     * Set the value of usn
     *
     * @param usn new value of usn
     */
    public void setUsn(String usn) {
        this.usn = usn;
    }

}
