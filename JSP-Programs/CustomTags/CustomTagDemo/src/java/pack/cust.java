/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import javax.servlet.jsp.JspWriter;
/**
 *
 * @author ghosh
 */
public class cust extends SimpleTagSupport{
    @Override
    public void doTag() throws IOException{
        JspWriter out = getJspContext().getOut();
        out.println("<h1>Hello world</h1>");
    }
}
