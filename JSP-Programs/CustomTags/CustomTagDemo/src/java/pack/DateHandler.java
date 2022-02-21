/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Calendar;
/**
 *
 * @author ghosh
 */
public class DateHandler extends SimpleTagSupport{
    @Override
    public void doTag() throws IOException{
        JspWriter out = getJspContext().getOut();
        out.println("<h2>" + Calendar.getInstance().getTime() + "</h2>");
    }
}
