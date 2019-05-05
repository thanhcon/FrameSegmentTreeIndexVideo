/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hcsdldpt;

import com.xuggle.xuggler.IContainer;

/**
 *
 * @author Admin
 */
public class test {
    
    
  private static final String filename = "Video/Video_2019-03-04_124302.mp4";
  
    public static void main(String[] args) {
        IContainer container = IContainer.make();
    int result = container.open(filename, IContainer.Type.READ, null);
long duration = container.getDuration();
long fileSize = container.getFileSize();

    }
}
