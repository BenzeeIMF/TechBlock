/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblock.entities;

import java.sql.Timestamp;

/**
 *
 * @author princ
 */
public class Post {
    
    private int pId;
    private String pTitle;

    public Post( String pTitle, String pContent, String pCode, String tags) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.tags = tags;
    }
    
    private String pContent;
    private String pCode;
    private String pPic;
    private Timestamp pDate;
    private int catId;

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public int getAuthorId() {
        return AuthorId;
    }

    public void setAuthorId(int AuthorId) {
        this.AuthorId = AuthorId;
    }
    private String tags;
    private int AuthorId;

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpContent() {
        return pContent;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public String getpPic() {
        return pPic;
    }

    public void setpPic(String pPic) {
        this.pPic = pPic;
    }

    public Timestamp getpDate() {
        return pDate;
    }

    public void setpDate(Timestamp pDate) {
        this.pDate = pDate;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public Post(int pId, String pTitle, String pContent, String pCode, String pPic, Timestamp pDate, int catId, String tags, int AuthorId) {
        this.pId = pId;
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPic = pPic;
        this.pDate = pDate;
        this.catId = catId;
        this.tags = tags;
        this.AuthorId = AuthorId;
    }

    public Post(String pTitle, String pContent, String pCode, String pPic, Timestamp pDate, int catId, String tags, int AuthorId) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPic = pPic;
        this.pDate = pDate;
        this.catId = catId;
        this.tags = tags;
        this.AuthorId = AuthorId;
    }

  
    
    
}
