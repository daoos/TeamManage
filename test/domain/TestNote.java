package domain;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.junit.Test;

import com.TeamManage.dao.MemberDao;
import com.TeamManage.dao.NoteDao;
import com.TeamManage.dao.ProjectDao;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Project;

public class TestNote {
	private String title="标题一";
	private String content="内容一";
	/**
	 * 这符合表的形式，在Note表里有外键
	 */
	@Test
	public void test1(){
		NoteDao dao=new NoteDao();
	
		Note note=new Note(title);
		ProjectDao dao1=new ProjectDao();
		MemberDao dao2=new MemberDao();
		Project project=(Project) dao1.get(2);
		Member member=(Member) dao2.get(1);
		note.setMember(member);
		Date publishTime = new Date();
		note.setPublishTime(publishTime);
		note.setContent(content);
		note.setProject(project);
		dao.save(note);	
		}
	@Test
	public void testInsertBatch(){
	
		NoteDao dao=new NoteDao();
		//dao.getListByProjectId(projectId)
		List<Note> list=dao.getListGroupByProjectName();
		System.out.println(list.size());
		/*for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Note note = (Note) iterator.next();
			System.out.println(note.getContent());
			note.getProject().getProjectId();
			System.out.println(note.getProject().getProjectName());
			//Iterator<Project> project=note.getProject().
		}*/
		/*for (Note note : list) {
			System.out.println(note.getContent());
		}*/
	}
	@Test
	public void  demo1() {
		NoteDao dao=new NoteDao();
		System.out.println(dao.getCount("from Note"));;
	}
	@Test
	public void  demo2() {
		NoteDao dao=new NoteDao();
		dao.getListByMemberId(1);
	
	}
}


