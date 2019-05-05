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
  private ArrayList<OjectFS_tree> arrObject ;
  private ArrayList<ActivityFS_tree>arrActivity;
  
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

    public ArrayList<OjectFS_tree> getArrObject() {
        return arrObject;
    }

    public void setArrObject(ArrayList<OjectFS_tree> arrObject) {
        this.arrObject = arrObject;
    }

    public ArrayList<ActivityFS_tree> getArrActivity() {
        return arrActivity;
    }

    public void setArrActivity(ArrayList<ActivityFS_tree> arrActivity) {
        this.arrActivity = arrActivity;
    }
  
    
    
}
