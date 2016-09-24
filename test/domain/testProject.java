package domain;

import org.hibernate.Session;

import com.TeamManage.dao.MemberDao;
import com.TeamManage.dao.ProjectDao;
import com.TeamManage.dao.ScheduleDao;
import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Project;

public class testProject {
	//创建一个项目，id号为
	public static void main(String[] args) {
		ProjectDao dao=new ProjectDao();
		MemberDao dao2=new MemberDao();
		Project project=(Project) dao.get(31);
		project.setProjectName("被修改了的项目后要加入123成员");
		Member member1 =(Member) dao2.get(2);
		Member member2 =(Member) dao2.get(1);
		Member member3 =(Member) dao2.get(3);
		project.getMemberSet().add(member1);
		project.getMemberSet().add(member2);
		project.getMemberSet().add(member3);
		dao.save(project);//31号会和1,2,3关联表存在
		//也可以查看打印的SQL语句
	}

}
