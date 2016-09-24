package domain;

import org.junit.Test;

import com.TeamManage.dao.NoteDao;
import com.TeamManage.dao.ScheduleDao;
import com.TeamManage.domain.Schedule;

public class TestSchedule {
	@Test
	public void  demo1() {
	ScheduleDao dao=new ScheduleDao();
	dao.getListByMemberId(1);
	}
}
