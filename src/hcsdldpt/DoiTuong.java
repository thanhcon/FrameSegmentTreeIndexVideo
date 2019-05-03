/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hcsdldpt;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DoiTuong {
    private String  nameObject ;
    private int frameStart ;
    private int frameEnd ;
  private String linkVideo ;

    public DoiTuong() {
    }

    public DoiTuong(String nameObject, int frameStart, int frameEnd, String linkVideo) {
        this.nameObject = nameObject;
        this.frameStart = frameStart;
        this.frameEnd = frameEnd;
        this.linkVideo = linkVideo;
    }

    public String getNameObject() {
        return nameObject;
    }

    public void setNameObject(String nameObject) {
        this.nameObject = nameObject;
    }

    public int getFrameStart() {
        return frameStart;
    }

    public void setFrameStart(int frameStart) {
        this.frameStart = frameStart;
    }

    public int getFrameEnd() {
        return frameEnd;
    }

    public void setFrameEnd(int frameEnd) {
        this.frameEnd = frameEnd;
    }

    public String getLinkVideo() {
        return linkVideo;
    }

    public void setLinkVideo(String linkVideo) {
        this.linkVideo = linkVideo;
    }
  
   

    
    
   
}
