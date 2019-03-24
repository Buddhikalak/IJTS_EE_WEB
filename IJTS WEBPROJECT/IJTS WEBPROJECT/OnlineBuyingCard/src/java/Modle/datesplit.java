/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Modle;

/**
 *
 * @author Buddhika
 */
public class datesplit {
    public String date_kanapita(String date){
    
        String hoda_date=date;
        String kanapita_date=null;
        
        String hoda_date_array[]= hoda_date.split("-");
        kanapita_date=hoda_date_array[2].toString()+"-"+hoda_date_array[0].toString()+"-"+hoda_date_array[1].toString();
        System.out.println(kanapita_date);
        
        return kanapita_date;
        
    
    
    }
    
}
