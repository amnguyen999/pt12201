/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashMap;

/**
 *
 * @author hlong232
 */
public class CartBean extends HashMap{

    public CartBean() {
        super();
    }
    
    public void addBook(Shop book){
        String key = book.getTensp();
        if(this.containsKey(key)){
            int oldQuantity = ((Shop) this.get(key)).getQuantity();
            ((Shop) this.get(key)).setQuantity(oldQuantity + 1);
        }else{
            this.put(book.getTensp(), book);
        }
    }
    
    public boolean removeBook(String title){
        if(this.containsKey(title)){
            this.remove(title);
            return true;
        }
        return false;
    }
}
