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
    private int idObject ;
     private ArrayList<Segment> lSegment = new ArrayList<>();

    public DoiTuong() {
    }

    public int getIdObject() {
        return idObject;
    }

    public void setIdObject(int idObject) {
        this.idObject = idObject;
    }

    public ArrayList<Segment> getlSegment() {
        return lSegment;
    }

    public void setlSegment(ArrayList<Segment> lSegment) {
        this.lSegment = lSegment;
    }
    
   
}
