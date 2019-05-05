/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hcsdldpt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class FsTree {
    private Node root ;
    private String nameVideo ;
    private int index = 0;// chi den index cua day sap xep 
     private Connection con = new ConnectDB().getconnect();
    
    public void loadObject(){
         String sql = " Select *from Bang ";
         
         
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
           
        } catch (SQLException ex) {
            Logger.getLogger(FsTree.class.getName()).log(Level.SEVERE, null, ex);
        }
         
         
                  
        
    }
    public void loadObject(int startframe,int endframe, Node node, OjectFS_tree obj)
    {
        if(node == null)
            return;
        if(node.getLB() > endframe || startframe >= node.getUB())
        return;
        if(node.getLB() >= startframe && node.getUB() < endframe)
        {
            node.getArrObject().add(obj);
            return;
        }
        else{
            loadObject(startframe, endframe, node.getNleft(), obj);
            loadObject(startframe, endframe, node.getNright(), obj);
        }
            
    }
    public void creatFsTree(ArrayList<Integer> lsm)// nhap vao  cac doan va loai bo phan tu trung sap xep tang dan 
    {
        HashSet<Integer> hs = new HashSet();// khoi tao   1 tap hop 
        for(int i = 0; i < lsm.size(); i ++)
        {
            hs.add(lsm.get(i));// them dan cac  phan tu vao tap hop 
        }
        ArrayList<Integer> sortedList = new ArrayList<Integer>(hs);
        Collections.sort((List<Integer>) sortedList);
        System.out.println(sortedList.size());
        buidFsTree(sortedList);// day vao tap hop loai bo cai trung
        
    }
    public void buidFsTree(ArrayList<Integer> list)
    {
        int maxlevel = (int) (Math.log(list.size())/Math.log(2));// lay ra cap cua node
        int level = 0;
        root = build(0, maxlevel, list);
        System.out.println("test");
    }
    public Node build(int level, int maxlevel, ArrayList<Integer> list) // xay dung cay 
    {
        if(level == maxlevel)
        {
            System.out.println("level:" + level);
            Node newnode = new Node();
            System.out.println("index:" + index);
            
            newnode.setLB(list.get(index ++));// 
            System.out.println("index:" + index);
            if(index == list.size())
                newnode.setUB(list.get(index - 1));
            else
            newnode.setUB(list.get(index));  //set UB ben phai 
            return newnode;  // tra ve nut 16 
        }
        Node newnode = new Node();
        Node left = build(level + 1, maxlevel, list);// de quy 
        Node right = build(level + 1, maxlevel, list);
        newnode.setNleft(left);
        newnode.setNright(right);
        newnode.setLB(left.getLB());
        newnode.setUB(right.getUB());
        return newnode;
    }
    public static void main(String[] args) {
        FsTree f = new FsTree();
        ArrayList<Integer> lsm = new ArrayList<Integer>();
        lsm.add(0);
        lsm.add(250);
        lsm.add(500);
        lsm.add(750);
        lsm.add(1000);
        lsm.add(1250);
        lsm.add(1500);
        lsm.add(1750);
        lsm.add(2250);
        lsm.add(2500);
        lsm.add(2750);
        lsm.add(3250);
        lsm.add(3500);
        lsm.add(3750);
        lsm.add(4500);
        lsm.add(5000);
        f.creatFsTree(lsm);      
        System.out.println(f.root.getNright().getLB());
        System.out.println(f.root.getNright().getUB());
        
       
    }
    
    
}
