package com.project.ethlete.domain;

import javax.persistence.Embeddable;

/**
 * Created by NUWJIANG on 4/28/2018.
 */

@Embeddable
public class UserName {

    private String firstName;

    private String middleName;

    private String lastName;

    private String nativeName;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNativeName() {
        return nativeName;
    }

    public void setNativeName(String nativeName) {
        this.nativeName = nativeName;
    }
}
