package com.TeamManage.action.NoteAction;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.metamodel.domain.Entity;

import com.TeamManage.action.baseAction.BaseAction;
import com.TeamManage.bean.NotePageBean;
import com.TeamManage.domain.Member;
import com.TeamManage.domain.Note;
import com.TeamManage.domain.Project;
import com.TeamManage.util.Constant;

@SuppressWarnings("serial")
public class NoteIndexAction extends BaseAction{
	private String projectId;//得到pro
	private List<Project> projects;
	private List<Note> noteList;
	private List<List<Note>> noteByProjectId=new ArrayList<>();
	private String noteId;
	private Note note;//这是要数据里或许数据
	private String title;//这是网页传过来的数据
	private String content;
	 private int page;
	    
	 
	public String execute()
	{
		try
		{
			//通过用户id得到笔记集合
			int memberId=(int) ctx.getSession().get(Constant.USER_ID);
			setProjects(projectDao.getListById(memberId));
			setNoteList(noteDao.getListByMemberId((memberId)));
		
			return SUCCESS;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return ERROR;
		}
	
	}
	/**
	 * 查看单个笔记内容
	 * @return
	 */
	public String seeNote() {
		 //表示每页显示5条记录，page表示当前网页
		int memberId=(int) ctx.getSession().get(Constant.USER_ID);
		setProjects(projectDao.getListById(memberId));
		setNoteList(noteDao.getListByMemberId((memberId)));
		NotePageBean pageBean = new NotePageBean();
		int pageSize=5;
		String hql="from Note";
		int allRows=noteDao.getCount(hql);
        //NotePageBean pageBean = personService.getPageBean(5, page);
        int totalPage = pageBean.getTotalPages(pageSize, allRows);
        
        int currentPage = pageBean.getCurPage(page);
        
        int offset = pageBean.getCurrentPageOffset(pageSize, currentPage);
        List<Note>list=noteDao.getPage(hql, offset, pageSize);
      
        
        pageBean.setList(list);
        pageBean.setAllRows(allRows);
        pageBean.setCurrentPage(currentPage);
        pageBean.setTotalPage(totalPage);
        //这样局部变量都可以传出去了
        HttpServletRequest request = ServletActionContext.getRequest();
        
        request.setAttribute("pageBean", pageBean);
        
        return SUCCESS;
	
	}
	public String seeOneNote() {
		note = (Note) noteDao.getNoteById(Integer.parseInt(getNoteId()));
		return SUCCESS;}
	public String createNote() {
		if(title==null&&title.length()<=0)
		{
			return ERROR;
		}
		Note note = new Note(title);
		if(content!=null&&content.length()>0)
		{
			note.setContent(content);
		}
		Member member =(Member) memberDao.get((int)ctx.getSession().get(Constant.USER_ID));
		note.setMember(member);
		Date publishTime = new Date();
		note.setPublishTime(publishTime);
		//字符串转字符的时候要判断
		Project project = (Project) projectDao.get(Integer.parseInt(projectId));
		note.setProject(project);
		noteDao.save(note);
		System.out.println("笔记保存成功");
		return SUCCESS;
	}
	public String deleteNote() {
		Note note =noteDao.getNoteById(Integer.parseInt(noteId));
		projectId=String.valueOf(note.getProject().getProjectId());//下一步重定向用
		noteDao.delete(note);
		return SUCCESS;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getNoteId() {
		return noteId;
	}
	public void setNoteId(String noteId) {
		this.noteId = noteId;
	}
	public Note getNote() {
		return note;
	}
	public void setNote(Note note) {
		this.note = note;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<List<Note>> getNoteByProjectId() {
		return noteByProjectId;
	}
	public void setNoteByProjectId(List<List<Note>> noteByProjectId) {
		this.noteByProjectId = noteByProjectId;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
	  public int getPage()
	    {
	        return page;
	    }

	    public void setPage(int page)
	    {
	        this.page = page;
	    }
		public List<Note> getNoteList() {
			return noteList;
		}
		public void setNoteList(List<Note> noteList) {
			this.noteList = noteList;
		}

}
