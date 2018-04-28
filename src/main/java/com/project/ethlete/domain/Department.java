package com.project.ethlete.domain;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

public class Department extends BaseEntity{

    private String name;

    private String code;

    @ManyToOne
    @JoinColumn(name="parent_id")
    private Department parent;

    @OneToMany(cascade= CascadeType.ALL,fetch= FetchType.LAZY)
    @JoinColumn(name="parent_id")
    private Set<Department> children = new HashSet<>();

    @OneToMany(mappedBy="department",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
    private Set<User> users = new HashSet<>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Department getParent() {
        return parent;
    }

    public void setParent(Department parent) {
        this.parent = parent;
    }

    public Set<Department> getChildren() {
        return children;
    }

    public void setChildren(Set<Department> children) {
        this.children = children;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}
