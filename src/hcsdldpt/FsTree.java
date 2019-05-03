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
    private ArrayList<DoiTuong> ldt; 
    

    public Node getRoot() {
        return root;
    }

    public void setRoot(Node root) {
        this.root = root;
    }
    
    
    public void loadObject(){
         String sql = " Select *from Bang ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
           
        } catch (SQLException ex) {
            Logger.getLogger(FsTree.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }
    //Đặt đối tượng vào các nút nằm trên cây phân đoạn khung 
    public void loadObjectToFrameSegmentTree(int startframe,int endframe, Node node, DoiTuong obj)
    {
        if(node == null)
            return;
        if(node.getLB() >= endframe || startframe >= node.getUB())
        return;
        if(node.getLB() >= startframe && node.getUB() <= endframe)
        {
            node.getArrObject().add(obj);
            System.out.println("Node: " + node.getNodenum());
            System.out.println(node.getLB() + " " + node.getUB());
            
            return;
        }
        else{
            loadObjectToFrameSegmentTree(startframe, endframe, node.getNleft(), obj);
            loadObjectToFrameSegmentTree(startframe, endframe, node.getNright(), obj);
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
        //System.out.println(sortedList.size());
        buidFsTree(sortedList);// day vao tap hop loai bo cai trung
        
    }
    public void buidFsTree(ArrayList<Integer> list)// xay dung cay 
    {
        int maxlevel = (int) (Math.log(list.size())/Math.log(2));// lay ra cap cua node
        int level = 0;
        root = build(0, maxlevel, list);
        
        //System.out.println("test");
    }
    public void indexFsTree(int index, Node node)
    {
        if(node == null)
            return;
        node.setNodenum(index);
        indexFsTree( index * 2, node.getNleft());
        indexFsTree(index * 2 + 1, node.getNright());
    }
    public Node build(int level, int maxlevel, ArrayList<Integer> list) // xay dung cay 
    {
        if(level == maxlevel)
        {
            //System.out.println("level:" + level);
            Node newnode = new Node();
            //System.out.println("index:" + index);
            
            newnode.setLB(list.get(index ++));// 
            //System.out.println("index:" + index);
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
    public void searchDoiTuong1(int start, int end, ArrayList<DoiTuong> ldt, Node node)
    {
        if(node == null)
            return;
        if(start >= node.getLB() && end <= node.getUB())
        {
            for(DoiTuong t: node.getArrObject())
            {
                // Can kiem tra xem doi tuong da ton tai trong ldt chua, neu ton tai
                //roi thi khong them doi tuong nay vao ldt nua
                ldt.add(t);
            }
        }
        searchDoiTuong1(start, end, ldt, node.getNleft());
        searchDoiTuong1(start, end, ldt, node.getNright());
    }
    //Lay toan bo doi tuong xuat hien trong toan bo khung hinh
    //tu [start, end)
    public ArrayList forallDoiTuong(int start, int end)
    {
        ArrayList<DoiTuong> ldt = new ArrayList<>();
        searchDoiTuong1(start, end, ldt, root);
        return ldt;
    }
    public ArrayList xuathien1Khunghinh(int start, int end)
    {
        ArrayList<DoiTuong> ldt = new ArrayList<>();
        searchDoiTuong2(start, end, ldt, root);
        //Mot so doi tuong co the xuat hien trong 2 khung hinh nhung van xuat hien trong
        //ket qua, vi du xet khoang 50 - 100. Doi tuong a xuat hien chi trong frame 50
        // và frame 100, thì kết quả ở list đối tượng sẽ có 2 bản ghi a
        // bản ghi này xuất hiện cả 2 lần nên cần loại bản ghi a ra khỏi kết quả
        return ldt;
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
        DoiTuong a = new DoiTuong();
//        a.getlSegment().add(new Segment(250, 750));
//        a.getlSegment().add(new Segment(1750, 2500));
//        a.getlSegment().add(new Segment(2250,2500));// tao
        f.creatFsTree(lsm);
        f.indexFsTree(1, f.getRoot());
        f.loadObjectToFrameSegmentTree(250, 750, f.root, a);
        f.loadObjectToFrameSegmentTree(1750,2500 ,f.root, a);
//         f.loadObjectToFrameSegmentTree(3500,3750 ,f.root, a);
//        f.loadObjectToFrameSegmentTree(4500,5000 ,f.root, a);
//                    f.loadObjectToFrameSegmentTree(3250,5000 ,f.root, a);
    }
    //Tìm kiếm các đối tượng chỉ xuất hiện trong 1 khung hình.
    private void searchDoiTuong2(int start, int end, ArrayList<DoiTuong> ldt, Node node) {
        if(end - start == 1)
        {
            for(DoiTuong t: node.getArrObject())
            {
                ldt.add(t);
            }
        }
        if(node.getLB() <= start && node.getUB() >= end)
        {
            if(node.getNleft() == null || node.getNright() == null)
            {
                return;
            }
            if(node.getNleft().getUB() >= end)
            {
                searchDoiTuong2(start, end, ldt, node.getNleft());
            }else if(node.getNright().getLB() <= start)
            {
                searchDoiTuong2(start, end, ldt, node.getNright());
            }else
            {
                searchDoiTuong2(start, node.getNleft().getUB(), ldt, node.getNleft());
                searchDoiTuong2(node.getNright().getLB(), end, ldt, node.getNright());
            }
        }
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
