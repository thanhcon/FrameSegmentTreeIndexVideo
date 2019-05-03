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
public class Node {
    
  private Node Nleft ;
  private Node Nright ;
  private int UB ;
  private int LB;
  private ArrayList<DoiTuong> arrObject = new ArrayList<>();
  private ArrayList<HanhVi>arrActivity;
  private int nodenum;

    public int getNodenum() {
        return nodenum;
    }

    public void setNodenum(int nodenum) {
        this.nodenum = nodenum;
    }
  
  
    public Node() {
        Nleft = null;
        Nright = null;
    }

    public Node getNleft() {
        return Nleft;
    }

    public void setNleft(Node Nleft) {
        this.Nleft = Nleft;
    }

    public Node getNright() {
        return Nright;
    }

    public void setNright(Node Nright) {
        this.Nright = Nright;
    }

    public int getUB() {
        return UB;
    }

    public void setUB(int UB) {
        this.UB = UB;
    }

    public int getLB() {
        return LB;
    }

    public void setLB(int LB) {
        this.LB = LB;
    }

    public ArrayList<DoiTuong> getArrObject() {
        return arrObject;
    }

    public void setArrObject(ArrayList<DoiTuong> arrObject) {
        this.arrObject = arrObject;
    }

    public ArrayList<HanhVi> getArrActivity() {
        return arrActivity;
    }

    public void setArrActivity(ArrayList<HanhVi> arrActivity) {
        this.arrActivity = arrActivity;
    }
  
    
    
}
