/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
/**
 *
 * @author ghosh
 */
public class Lab1 extends Frame implements ItemListener,ActionListener{
     Panel p = new Panel();
     TextField tf = new TextField(20);
     TextArea ta = new TextArea(10,100);
     Choice c1 = new Choice();
     Choice c2 = new Choice();
     Button btn = new Button("Search");
     Label status =  new Label("No. of results found = 0");
     String query = null;
        
     Connection con = null;
     PreparedStatement ps = null;
     ResultSet rs = null;
     public Lab1(){
        super("Telephone Directory");
        setVisible(true);
        setSize(800,400);
        c1.add("Telephone no.");
        c1.add("Name");
        c1.add("Address");
        c1.addItemListener(this);
        btn.addActionListener(this);
        addWindowListener(new WindowAdapter(){
            @Override
            public void windowClosing(WindowEvent e){
                dispose();
            }
        });
        setLayout(new BorderLayout());
        p.setLayout(new GridLayout(4,2));
        p.add(new Label("Search Option 1 : "));
        p.add(c1);
        p.add(new Label("Search Option 2 : "));
        p.add(c2);
        c2.setVisible(false);
        p.add(new Label("Enter text: "));
        p.add(tf);
        p.add(new Label("")); 
        p.add(btn);
        add("North",p);
        add("Center",ta);
        add("South",status);
        ta.setEditable(false);
        
        String url = "jdbc:derby://localhost:1527/TelephoneDirectory";
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con = DriverManager.getConnection(url,"soumyadepp","soumyadepp");
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
     }
     @Override
     public void itemStateChanged(ItemEvent e){
         String arg = e.getItem().toString();
         if(arg.equals("Telephone No.")){
             c2.setVisible(false);
         }
         else if(arg.equals("Name")){
             c2.removeAll();
             c2.add("First Name");
             c2.add("Middle Name");
             c2.add("Last Name");
             c2.setVisible(true);
         }
         else if(arg.equals("Address")){
             c2.removeAll();
             c2.add("Area");
             c2.add("City");
             c2.setVisible(true);
         }
     }
     @Override
     public void actionPerformed(ActionEvent ae){
         ta.setText("Refreshed");
         query = "SELECT * FROM DIRECTORY";
         int len = 0;
         len = tf.getText().trim().length();
         try{
             if(c1.getSelectedItem().equals("Telephone no.") && len > 0){
                 query += " where TELEPHONENUMBER = ?";
                 ps = con.prepareStatement(query);
                 ps.setString(1,tf.getText().trim());
             }
             else if(c1.getSelectedItem().equals("Name") && len > 0){
                 switch (c2.getSelectedItem()) {
                     case "First Name":
                         query += " where OWNER_FIRSTNAME = ?";
                         break;
                     case "Middle Name":
                         query += " where OWNER_MIDDLENAME = ?";
                         break;
                     case "Last Name":
                         query += " where OWNER_LASTNAME = ?";
                         break;
                     default:
                         break;
                 }
                 ps = con.prepareStatement(query);
                 ps.setString(1,tf.getText().trim());
             }
             else if(c1.getSelectedItem().equals("Address") && len > 0){
                 if(c2.getSelectedItem().equals("Area")){
                     query += " where OWNER_AREANAME = ?";
                 }
                 else if(c2.getSelectedItem().equals("City")){
                     query += " where OWNER_CITY = ?";
                 }
                 ps = con.prepareStatement(query);
                 ps.setString(1,tf.getText().trim());
             }
             else{
                 ps = con.prepareStatement(query);
             }
             try{
                 System.out.println(query);
                 rs = ps.executeQuery();
             }
             catch(NullPointerException e){
                 System.out.println("Null Text");
                 System.out.println(e);
                 status.setText("Records Found = 0");
             }
             if(rs != null){
                 ta.setText("Number\t\tFName\t\tMName\t\tLname\t\tAdd1\t\tAdd2\tArea\t\tCity\n");
             }
             int count = 0;
             while(rs.next()){
                 ta.append("" + rs.getString(1) + "\t");
                 ta.append("" + rs.getString(2) + "\t");
                 ta.append("" + rs.getString(3) + "\t");
                 ta.append("" + rs.getString(4) + "\t");
                 ta.append("" + rs.getString(5) + "\t");
                 ta.append("" + rs.getString(6) + "\t");
                 ta.append("" + rs.getString(7) + "\t");
                 ta.append("" + rs.getString(8) + "\t\n");
                 count++;
             }
             status.setText("Records found = " + count);
         }
         catch(Exception e){
             System.out.println(e);
         }
     }
    public static void main(String[] args) {
        Frame dir = new Lab1();
    }
}
