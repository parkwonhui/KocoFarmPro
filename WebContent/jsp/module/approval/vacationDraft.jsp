<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>


	$(function() {

		$('#Startdatepicker').datepicker({
			onSelect : function(dateText, inst) {
				$("input[name='vacationStartDt']").val(dateText);
			},
			dateFormat :'yy-m-dd'
			
		})
	});

	$(function() {
		$("#Enddatepicker").datepicker({
			onSelect : function(dateText, inst) {
				$("input[name='vacationEndDt']").val(dateText);
			},
			dateFormat :'yy-m-dd'
		})
	});
</script> 
<jsp:include page="/jsp/comm/top.jsp" flush="false" ></jsp:include>
<link rel="stylesheet" type="text/css" href="/KocoFarmPro/css/module/approval.css" />

	<div class="cont_wrap">
		<!-- SubTitle Area -->
		<div class="sub_title">
			<div class="sub_title_top">
				<div class="sub_title_inner">
					<h2>Approval <span>결재 관련 내용을 확인할 수 있습니다.</span></h2>
					<ul class="sub_nav">
						<li>홈 > </li>
						<li class="on">문서 결재</li>
					</ul>
				</div>
			</div>
		</div>
	
		<!-- Contents Area -->
		<div class="contents_wrap">
			<!-- sch_top -->
			<div class="sch_wrap">
				<p class="tit">검색</p>
				<div class="sch_slide_btn">
					<img id="slideBtnImg" class="upBtn" src="/KocoFarmPro/img/comm/list_up_btn.png" alt="메뉴 접기" />
				</div>
				<div class="sch_toggle_wrap">
					<div class="sch_box_wrap">
						<div class="right">
							<select name="schType" id="schType">
								<option value="">전체</option>
								<option value="title">제목</option>
								<option value="contents">내용</option>
							</select>
							<input type="text" name="schWord" id="schWord" placeholder="검색어를 입력 해 주세요" />
							<input type="button" class="schBtn" id="schBtn" value="검색" />
						</div>
					</div>
				</div>
			</div>
		
			<!-- list -->
			<style>
				td {
					text-align: center;
				}
				
				h1 {
					text-align: center;
				}
			</style>
			<div class="contents">
				<!-- 기안서 보기 -->
				<form action="insertDraft.do" method="post">
					<div class="vacation_wrap">
						<div class="title">
							<h1>휴 가 신 청 서</h1>
						</div>
						
						<!-- vacation table 시작 -->
						<div class="vac_table">
							<table width = 100% height = 70% border=1 cellpadding=0 cellspacing=0
								align="center">
			
								<tr>
									<td rowspan="2" width = 15%>기안서 정보</td>
									<td width = 15%>기안서 제목</td>
									<td colspan="3"=><input type="text" name="draftTitle" size=65></td>
									<td>등록 날짜</td>
									<td colspan="3" >draft_date</td>
			
			
								</tr>
								<tr>
									<!-- 기안서 정보 -->
									<td>기안서 양식</td>
									<td colspan="3"><select name="formId" value="formId">
											<option value="1">지출명세서</option>
											<option value="2">히잇</option>
											<option value="3">헤엣</option>
											<option value="4">휴가신청서</option>
											<option value="5">유급휴가신청서</option>
			
									</select></td>
									<td>보존년한</td>
									<td colspan="3"><input type="text" name="draftYear"></td>
								</tr>
			
								<tr>
									<td rowspan="3">인적 사항</td>
									<td>소속 부서</td>
									<td colspan="7">소속이름</td>
								</tr>
								<tr>
			
									<td>직위</td>
									<td colspan="7">직위이름</td>
								</tr>
								<tr>
			
									<td>성명</td>
									<td colspan="7">emp_name</td>
								</tr>
								<tr>
									<td rowspan="4">신청내용</td>
									<td rowspan="3">휴가신청</td>
									<td width = 7%>휴가종류</td>
									<td colspan="6">
									<input type="radio" name = "vacation" checked value="sick">병가
									<input type="radio" name = "vacation" value="beforenoon"> 오전 반차
									<input type="radio" name = "vacation" value="afternoon"> 오후 반차
									<input type="radio"	name = "vacation" value="allday"> 연차
									</td>
								</tr>
								
								<tr>
									<!-- 신청내용   -->
									<!-- 휴가신청   -->
									<td>휴가 일정</td>
									<td width = 5%>시작 날짜</td>
									<td><input type="text" id="Startdatepicker" name = "vacationStartDt" data-date-format='yy-mm-dd' >
			
									<td width = 5%>끝 날짜</td>
									<td><input type="text" id="Enddatepicker" name = "vacationEndDt" data-date-format='yy-mm-dd' 	>
									<td width = 5%>총 일 수</td>
									<td><input type="text" name="vacationDays"></td>
								</tr>
			
								<tr>
									<!-- 신청내용   -->
									<!-- 휴가신청   -->
									<td>대체근무자</td>
									<td>id</td>
									<td><input type="text" name="replaceId">
									<td>이름</td>
									<td><input type="text" name="replaceName">
									<td>직위</td>
									<td><input type="text" name="replacedeg">
								</tr>
								<tr>
									<!-- 신청내용   -->
									<td>신 청 사 유 <Br>(세부 내용)
									</td>
									<!-- 세부내용기재   -->
									<td colspan="7"><textarea rows="6" cols="120"
											name="vacationReason">
										세부 내용 기재
										</textarea></td>
			
								</tr>
			
			
							</table>
						</div>
						<!-- vacation table 끝 -->
			
						<div class= flt_r>
						<br><br>
							<!-- <input type = "submit" value = "저장하기" > -->
							<input type="submit" value="제출">
							<br><br>
						</div>
					</div>
				</form>
			</div>
		
		</div>
	</div>
<script type="text/javascript" src="/KocoFarmPro/js/module/approval.js"></script>
<jsp:include page="/jsp/comm/bottom.jsp" flush="false" ></jsp:include>