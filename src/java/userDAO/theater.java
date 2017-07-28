/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userDAO;

import org.json.simple.JSONObject;


/**
 *  
 * @author D3LL
 */
public class theater {
     private int id;
     private String theater_name;
     private  String theater_location;
     private String theater_date;
     private String theater_time;
     private String theater_pic;
     private  String theater_plan;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTheater_name() {
        return theater_name;
    }

    public void setTheater_name(String theater_name) {
        this.theater_name = theater_name;
    }

    public String getTheater_location() {
        return theater_location;
    }

    public void setTheater_location(String theater_location) {
        this.theater_location = theater_location;
    }

      public String getTheater_date() {
        return theater_date;
    }

    public void setTheater_date(String theater_date) {
        this.theater_date = theater_date;
    }

    public String getTheater_time() {
        return theater_time;
    }

    public void setTheater_time(String theater_time) {
        this.theater_time = theater_time;
    }

    
public String getTheater_pic() {
return theater_pic;
}

public void setTheater_pic(String theater_pic) {
this.theater_pic = theater_pic;
}     

    public String getTheater_plan() {
        return theater_plan;
    }

    public void setTheater_plan(String theater_plan) {
        this.theater_plan = theater_plan;
    }

   
   
     
    

   public String getJSON()
    {
        String retval = "";
        
        JSONObject jobj = new JSONObject();
        
        jobj.put("theater_id", this.getId());
        jobj.put("theater_name", this.getTheater_name());
        jobj.put("theater_location", this.getTheater_location());
        jobj.put("theater_date", this.getTheater_date());
        jobj.put("theater_time", this.getTheater_time());
        jobj.put("theater_pic", this.getTheater_pic());
        jobj.put("theater_plan", this.getTheater_plan());

        retval = jobj.toJSONString();
        
        return retval;
    }
    
    public JSONObject getJSONObject()
    {
        JSONObject retval = new JSONObject();
        
        retval.put("theater_id", this.getId());
        retval.put("theater_name", this.getTheater_name());
        retval.put("theater_location", this.getTheater_location());
        retval.put("theater_date", this.getTheater_date());
        retval.put("theater_time", this.getTheater_time());
        retval.put("theater_pic", this.getTheater_pic());
        retval.put("theater_plan", this.getTheater_plan());

        return retval;
    }
}