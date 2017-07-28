/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ticket_info;

/**
 *
 * @author D3LL
 */
public class TicketHandle {
    private int Id;
    private String user_name;
    private String theater_movie;
    private String theater_place;
    private String theater_timing;
    private String theater_date;
    private String user_date;
    private String user_seat;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getTheater_movie() {
        return theater_movie;
    }

    public void setTheater_movie(String theater_movie) {
        this.theater_movie = theater_movie;
    }

    public String getTheater_place() {
        return theater_place;
    }

    public void setTheater_place(String theater_place) {
        this.theater_place = theater_place;
    }

    public String getTheater_timing() {
        return theater_timing;
    }

    public void setTheater_timing(String theater_timing) {
        this.theater_timing = theater_timing;
    }

    public String getTheater_date() {
        return theater_date;
    }

    public void setTheater_date(String theater_date) {
        this.theater_date = theater_date;
    }

    public String getUser_date() {
        return user_date;
    }

    public void setUser_date(String user_date) {
        this.user_date = user_date;
    }

    public String getUser_seat() {
        return user_seat;
    }

    public void setUser_seat(String user_seat) {
        this.user_seat = user_seat;
    }
 
};

