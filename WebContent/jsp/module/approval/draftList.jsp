<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
			<div class="contents">
				<!-- 목록 보기 -->
				<table class="contents_tb" id="contTb">
					<tr>
						<th>기안서 번호 </th>
						<th>기안서 제목</th>
						<th>등록 날짜</th>
					</tr>
					
					<c:forEach var="ApprovalDraft" items="${list }">
						<tr>
							<td>${ApprovalDraft.draftId }</td>
							<td>${ApprovalDraft.draftName}</td>
							<td>${ApprovalDraft.draftDt }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		
		</div>
	</div>
<script type="text/javascript" src="/KocoFarmPro/js/module/approval.js"></script>
<jsp:include page="/jsp/comm/bottom.jsp" flush="false" ></jsp:include>