/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ticket_info;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author D3LL
 */
public interface ticketHandleInterface {
 
    
    void addTicket_dta(TicketHandle ticket);
    
    ArrayList <TicketHandle> view_ticket();
}
