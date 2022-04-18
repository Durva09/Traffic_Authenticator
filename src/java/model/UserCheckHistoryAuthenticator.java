package model;

import db.DBConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class UserCheckHistoryAuthenticator {
    
    DBConnector db=new DBConnector();
    Connection con=db.getConnection();
    
    public boolean ischeckHistory(String userid,String policeid,String stats)
    {
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        String time= sdf.format(cal.getTime());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy/MM/dd");
        String date = simpleDateFormat.format(new Date());
        String query="insert into user_history values(?,?,?,?,?,?)";
        try
        {
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,policeid);
            ps.setString(2,userid);
            ps.setString(3,date);
            ps.setString(4,time);
            ps.setString(5,"location_api");
            ps.setString(6, stats);
            int x=ps.executeUpdate();
            if(x>0)
            {
                return true;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
}
