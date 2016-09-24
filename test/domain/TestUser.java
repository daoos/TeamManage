package domain;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;

import com.TeamManage.dao.MemberDao;
import com.TeamManage.dao.ProjectDao;
import com.TeamManage.dao.UserDao;
import com.TeamManage.dao.base.SuperDao;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Project;

public class TestUser {
	
	@Test
	public void testSchemaExport()
	{
		//创建配置对象
		Configuration config = new Configuration().configure();
		//创建服务注册对象
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
		//创建SessionFactory
		SessionFactory  sessionFactory=config.buildSessionFactory(serviceRegistry);
		Session session =sessionFactory.getCurrentSession();
		//创建SchemaExport
		SchemaExport export = new SchemaExport(config);
		export.create(true, true);
	}
	@Test
	public void test(){
		
		//SuperDao<Project> dao=new SuperDao();
		//Session session=dao.getSession();
		UserDao dao=new UserDao();
		//org.hibernate.Transaction transaction = session.beginTransaction();
		Project project=new Project();
		//project.setAdminId(1);
		project.setProjectName("工程一");
		dao.save(project);
		//transaction.commit();
		//session.close();
	}
	@Test
	public void test1(){
		
		//SuperDao<Project> dao=new SuperDao();
		//Session session=dao.getSession();
		//MemberDao dao=new MemberDao();
		ProjectDao dao=new ProjectDao();
		//org.hibernate.Transaction transaction = session.beginTransaction();
		Project project=new Project();
		//project.setAdminId(1);
		project.setProjectName("工程一");
		//Set<Member> memberSet=new HashSet<Member>(); 
		Member member=new Member();
		//member.setMemberId(6);
		//memberSet.add(member);
		project.getMemberSet().add(member);
		//project.setMemberSet(memberSet);
		dao.save(project);
		//dao.save(1);
		//dao.getMemberByName(memberName)
		//transaction.commit();
		//session.close();
	}
	@Test
	public void test2(){
		ProjectDao dao=new ProjectDao();
		List<Project>list=dao.getPage();
		for (Project project : list) {
			System.out.println(project.getProjectId());
			
		}
		List<Project>list1=dao.getPage();
		for (Project project : list1) {
			System.out.println(project.getProjectId());
			
		}
	}

}
