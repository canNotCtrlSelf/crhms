package com.cncs.domain;

import java.io.Serializable;

/**
 * 注册用户的实体类
 */
public class UserRegister implements Serializable {
    private int id;
    private String username;
    private String password;
    private int role_id;
    private String phone_number;
    private String community_name;

    @Override
    public String toString() {
        return "UserRegister{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", role_id=" + role_id +
                ", phone_number='" + phone_number + '\'' +
                ", community_name='" + community_name + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getCommunity_name() {
        return community_name;
    }

    public void setCommunity_name(String community_name) {
        this.community_name = community_name;
    }
}
