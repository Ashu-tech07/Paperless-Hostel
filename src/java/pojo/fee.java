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
public class fee {
    private int  Student_id;
    private String FEE_MONTH;
    private String Fee_description;
    private String fee_id;

    /**
     * @return the Student_id
     */
    public int getStudent_id() {
        return Student_id;
    }

    /**
     * @param Student_id the Student_id to set
     */
    public void setStudent_id(int Student_id) {
        this.Student_id = Student_id;
    }

    /**
     * @return the FEE_MONTH
     */
    public String getFEE_MONTH() {
        return FEE_MONTH;
    }

    /**
     * @param FEE_MONTH the FEE_MONTH to set
     */
    public void setFEE_MONTH(String FEE_MONTH) {
        this.FEE_MONTH = FEE_MONTH;
    }

    /**
     * @return the Fee_description
     */
    public String getFee_description() {
        return Fee_description;
    }

    /**
     * @param Fee_description the Fee_description to set
     */
    public void setFee_description(String Fee_description) {
        this.Fee_description = Fee_description;
    }

    /**
     * @return the fee_id
     */
    public String getFee_id() {
        return fee_id;
    }

    /**
     * @param fee_id the fee_id to set
     */
    public void setFee_id(String fee_id) {
        this.fee_id = fee_id;
    }
    
}
