package kosta.model.module.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.model.module.dao.ApprovalDao;
import kosta.model.module.vo.ApprovalDraft;
import kosta.model.module.vo.ApprovalVacation;

public class ApprovalService {
	private static ApprovalDao dao;
	private static ApprovalService service = new ApprovalService();

	public static ApprovalService getInstnace(){
		dao = ApprovalDao.getInstance();
		return service;
	}
	
	public int insertDraftService(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		
		
		ApprovalDraft draft = new ApprovalDraft();
		draft.setDraftTitle(request.getParameter("draftTitle"));
		draft.setDraftName(request.getParameter("draftName"));
		draft.setDraftYear(Integer.parseInt(request.getParameter("draftYear")));
		
		return dao.insertDraft(draft);
	}
	
	public int insertVacationService(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		
		ApprovalVacation vacation = new ApprovalVacation();


		vacation.setVacationEndDt(request.getParameter("vacationStartDt"));
		vacation.setVacationStartDt(request.getParameter("vacationEndDt"));
		vacation.setVacationDays(Integer.parseInt(request.getParameter("vacationDays")));
		vacation.setVacationReason(request.getParameter("vacationReason"));
		vacation.setVacationType(request.getParameter("vacationType"));
		
		
		
		return dao.insertVacation(vacation);
		
	}
	
}
