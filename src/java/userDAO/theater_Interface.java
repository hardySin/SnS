/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userDAO;

import java.util.ArrayList;

/**
 *
 * @author D3LL
 */
public interface theater_Interface
{
   void addDta(theater threobj); 
   void deleteTheater(int id);
   ArrayList <theater>theater_dta();
    ArrayList selected_theater_dta(String name);
    StringBuilder seat_dta();
    
    ArrayList seat_table();
//   ArrayList theater_plan();
//    /**
     
}
