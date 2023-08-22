/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author AshishYadav
 */
public class room {
   private String room_id;
   private int Capacity;
   private int Hostel_num;
   private String Room_status;
   private int vacant_seats;

    /**
     * @return the room_id
     */
    public String getRoom_id() {
        return room_id;
    }

    /**
     * @param room_id the room_id to set
     */
    public void setRoom_id(String room_id) {
        this.room_id = room_id;
    }

    /**
     * @return the Capacity
     */
    public int getCapacity() {
        return Capacity;
    }

    /**
     * @param Capacity the Capacity to set
     */
    public void setCapacity(int Capacity) {
        this.Capacity = Capacity;
    }

    /**
     * @return the Hostel_num
     */
    public int getHostel_num() {
        return Hostel_num;
    }

    /**
     * @param Hostel_num the Hostel_num to set
     */
    public void setHostel_num(int Hostel_num) {
        this.Hostel_num = Hostel_num;
    }

    /**
     * @return the Room_status
     */
    public String getRoom_status() {
        return Room_status;
    }

    /**
     * @param Room_status the Room_status to set
     */
    public void setRoom_status(String Room_status) {
        this.Room_status = Room_status;
    }

    /**
     * @return the vacant_seats
     */
    public int getVacant_seats() {
        return vacant_seats;
    }

    /**
     * @param vacant_seats the vacant_seats to set
     */
    public void setVacant_seats(int vacant_seats) {
        this.vacant_seats = vacant_seats;
    }
    
}
