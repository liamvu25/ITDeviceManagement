/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package manhcuong.request;

/**
 *
 * @author Admin
 */
public class ExtendDTO {
    private int extendID;
    private int requestID;
    private String message;

    public ExtendDTO(){
        
    }
    public ExtendDTO(int extendID, int requestID, String message) {
        this.extendID = extendID;
        this.requestID = requestID;
        this.message = message;
    }

    public int getExtendID() {
        return extendID;
    }

    public void setExtendID(int extendID) {
        this.extendID = extendID;
    }

    public int getRequestID() {
        return requestID;
    }

    public void setRequestID(int requestID) {
        this.requestID = requestID;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    
}
