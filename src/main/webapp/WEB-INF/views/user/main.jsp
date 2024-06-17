<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<jsp:include page="../layout/opener.jsp"/>
<jsp:include page="../layout/sidebar.jsp"/>


<!-- fullcalendar -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.13/index.global.min.js'></script>
<script src='fullcalendar/dist/index.global.js'></script>



<style>

#calendar {
		text-align: center;
    width:850px;
    height: auto;
}


</style>


<!-- ===== Content Area Start ===== -->
<div
  class="relative flex flex-1 flex-col overflow-y-auto overflow-x-hidden"
  >

  <!-- ===== Header End ===== -->

  <!-- ===== Main Content Start ===== -->
  <main>

	유저 사번: ${user.empId}
	<div class="mx-auto max-w-screen-2xl p-4 md:p-6 2xl:p-10">
            <div class="grid grid-cols-1 gap-4 md:grid-cols-2 md:gap-6 xl:grid-cols-4 2xl:gap-7.5">
              <!-- Card Item Start -->
              <div class="rounded-sm border border-stroke bg-white px-7.5 py-6 shadow-default dark:border-strokedark dark:bg-boxdark">
              

                <div class="mt-4 flex items-end justify-between">
                  <div>
                    <h4 class="text-title-md font-bold text-black dark:text-white">
                     
                     오늘날짜나 현재 예약중인 물품
                     
                     
                    </h4>
                  </div>      
                  </div>
              </div>

              <!-- Card Item End -->

              <!-- Card Item Start -->
              <div class="rounded-sm border border-stroke bg-white px-7.5 py-6 shadow-default dark:border-strokedark dark:bg-boxdark">
               

                <div class="mt-4 flex items-end justify-between">
                  <div>
                    <h4 class="text-title-md font-bold text-black dark:text-white">
                     내가 올린 기안? 결제해야할 기안?
                    </h4>
                  
                  </div>

                 
                </div>
              </div>
              <!-- Card Item End -->

              <!-- Card Item Start -->
              <div class="rounded-sm border border-stroke bg-white px-7.5 py-6 shadow-default dark:border-strokedark dark:bg-boxdark">
                

                <div class="mt-4 flex items-end justify-between">
                  <div>
                    <h4 class="text-title-md font-bold text-black dark:text-white">
                      뭐 넣을거 있나
                    </h4>
                   
                  </div>

               
                </div>
              </div>
              <!-- Card Item End -->

              <!-- Card Item Start -->
              <div class="rounded-sm border border-stroke bg-white px-7.5 py-6 shadow-default dark:border-strokedark dark:bg-boxdark">
               

                <div class="mt-4 flex items-end justify-between">
                  <div>
                    <h4 class="text-title-md font-bold text-black dark:text-white">
                      안 읽은 메세지 개수?
                      
                    </h4>
                    
                  </div>

                 
                </div>
              </div>
              <!-- Card Item End -->
            </div>

            
            
  <div id="scheduleBox" class="mt-4 grid grid-cols-12 gap-4 md:mt-6 md:gap-6 2xl:mt-7.5 2xl:gap-7.5">
  <!-- ====== Chart One Start -->
  <div class="col-span-12 rounded-sm border border-stroke bg-white px-5 pb-5 pt-7.5 shadow-default dark:border-strokedark dark:bg-boxdark sm:px-7.5 xl:col-span-8">
  <div class="flex flex-wrap items-start justify-between gap-3 sm:flex-nowrap">
  	
  	<div id='calendar'></div>
  	
  </div>
  </div>


 
   


         

            
<div class="col-span-12 rounded-sm border border-stroke bg-white p-7.5 shadow-default dark:border-strokedark dark:bg-boxdark xl:col-span-4">
  <div class="mb-4 justify-between gap-4 sm:flex">
    <div>
      <h4 class="text-xl font-bold text-black dark:text-white">
        사원정보?
      </h4>
    </div>
    

  
</div>
    </div>
  </div>
</div>

    

  </main>
  <!-- ===== Main Content End ===== -->
</div>



<script>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        dayMaxEventRows: true,
        views: {
		    timeGrid: {
		      dayMaxEventRows: 2 // 이벤트 날짜 겹치는 일정 최대 3개까지 등장
		    }
		  },
        events: function(fetchInfo, successCallback, failureCallback) {
            $.ajax({
                url: '${contextPath}/calendar/events',
                type: 'GET',
                success: function(data) {
                    var events = parseEvents(data);
                    successCallback(events);
                },
                error: function(xhr, status, error) {
                    alert('일정 조회에 실패했습니다.');
                    console.error("Error details:", xhr, status, error);
                }
            });
        },
        eventClick: function(info) {
        	 window.location.href = '${contextPath}/calendar';
        }
        
    });
    
    calendar.render();
});

function parseEvents(data) {
	return data.map(event => {
       // startHour와 endHour가 제대로 설정되었는지 확인
        const startHour = (event.startHour || '00').trim();
   		  const endHour = (event.endHour || '00').trim();

	        // startDateTime와 endDateTime 설정
	        const startDateTime = event.startDt ? `\${event.startDt}T\${startHour.padStart(2, '0')}:00` : null;
	        const endDateTime = event.endDt ? `\${event.endDt}T\${endHour.padStart(2, '0')}:00` : null;
   	  	console.log(startDateTime, endDateTime);
   	  	
   	  	
        return {
            id: event.scheduleId,
            title: event.title,
            start: startDateTime,
            end: endDateTime,
            allDay: event.allDay || false,
            extendedProps: {
                docState: event.docState,
                contents: event.contents,
                empId: event.empId,
                depId: event.depId
            },
            backgroundColor: event.docState == 1 ? '#2ef061' : event.docState == 2 ? 'orange' : 'blue',
            borderColor: event.docState == 1 ? '#2ef061' : event.docState == 2 ? 'orange' : 'blue',
        };
    });
}
</script>

<jsp:include page="../layout/closer.jsp"/>
