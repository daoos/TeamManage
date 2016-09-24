package domain;


import java.util.Date;

import org.junit.Test;

import com.TeamManage.dao.TaskDao;
import com.TeamManage.dao.UserDao;
import com.TeamManage.domain.Project;
import com.TeamManage.domain.Task;

public class TaskTest {
	@Test
public void test(){
		

	
		TaskDao dao=new TaskDao();
		Task task=new Task();
		//Date publishTime = new Date(0);
		Date date=new Date();
		for (int i = 0; i < 10; i++) {
			task.setDeadline(date);
			task.setTaskContent("任务内容"+i);
			task.setTaskName("任务"+i);
			task.setState(""+i);
			task.setPriority(""+i);
			//task.set
			//dao
			dao.save(task);
		}
	
		//transaction.commit();
		//session.close();
	}
}
