package com.cncs.domain;

import java.io.Serializable;

/**
 * 社区健康管理员
 */
public class CommunityAdmin implements Serializable {
    private int id;
    private String username;
    private String password;
    private int register_id;
    private String community_name;

    @Override
    public String toString() {
        return "CommunityAdmin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", register_id=" + register_id +
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

    public int getRegister_id() {
        return register_id;
    }

    public void setRegister_id(int register_id) {
        this.register_id = register_id;
    }

    public String getCommunity_name() {
        return community_name;
    }

    public void setCommunity_name(String community_name) {
        this.community_name = community_name;
    }
}
