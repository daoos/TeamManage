

import java.util.ArrayList;
import java.util.List;

import com.TeamManage.entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class JsonJQueryStruts2Action extends ActionSupport{
    

/**
 * Struts2的JSON插件，实现Action中的属性序列化成JSON对象时默认JSON插件会把所有Action中包含getter方法的属性都序列化到JSON对象中
 * */
    
    private int uuid;
    public int getUuid() {
        return uuid;
    }

    
    private String address;
    public String getAddress() {
        return address;
    }

    
    private List<User> list;
    public List<User> getList() {
        return list;
    }
/**
 * ==================================
 */
    
    public String returnList(){
        list=new ArrayList();
        
        //用户1
        User user1=new User();
        user1.setUserId(1);
        user1.setUserName("艾广然");
        user1.setPassword("123456");
        
        //用户2
        User user2=new User();
        user2.setUserId(2);
        user2.setUserName("王宁");
        user2.setPassword("654321");
        
        //将对象存入到list
        list.add(user1);
        list.add(user2);
        
        return "userList";
        
        
        
    }




    
    
    


}