/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblock.helpers;

/**
 *
 * @author princ
 */
public class AlertContent {
    
    private String cssClass;
    private String titleMessage;
    private String descMessage;

    public AlertContent(String cssClass, String titleMessage, String descMessage) {
        this.cssClass = cssClass;
        this.titleMessage = titleMessage;
        this.descMessage = descMessage;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }

    public String getTitleMessage() {
        return titleMessage;
    }

    public void setTitleMessage(String titleMessage) {
        this.titleMessage = titleMessage;
    }

    public String getDescMessage() {
        return descMessage;
    }

    public void setDescMessage(String descMessage) {
        this.descMessage = descMessage;
    }
    
}
