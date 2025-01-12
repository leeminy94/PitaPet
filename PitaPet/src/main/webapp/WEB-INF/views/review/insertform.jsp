<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>핏어펫(Pit a Pet) - 사지않고 유기동물을 입양하는 문화를 만듭니다</title>
	<jsp:include page="/resources/resource.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" />
</head>
<body>
	<div id="reviewInsert">
		<header-component :cpath="cpath" :id="id"></header-component>
		<div class="board-wrap">
			<page-category class="adopt-review" :name="'입양후기'"></page-category>
			<div class="container">
				<form action="insert.do" method="post" id="insertForm" enctype="multipart/form-data">
					<div>
			      		<label>동물 분류</label>
			      		<select name="animalType" id="animalType">
			      			<option value="">선택</option>
				   			<option value="dog">dog</option>
				   			<option value="cat">cat</option>
						</select>
			      	</div>
					<div class="mb-3">
						<label class="form-label" for="title">제목</label>
						<input class="form-control" type="text" name="title" id="title" />
					</div>
					<div class="mb-3">
						<label class="form-label" for="content">내용</label>
						<textarea class="form-control" name="content" id="content"></textarea>
					</div>
					<div>
				        <label class="form-label" for="imgFile">첨부 이미지</label>
				        <input class="form-control" type="file" name="imgFile" id="imgFile"
				            accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
				    </div>
					<button class="btn btn-primary" type="submit">저장</button>
				</form>
			</div>
		</div>
		<footer-component></footer-component>
	</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/page_category.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/footer.js"></script>
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<script>
	new Vue({
	    el : "#reviewInsert",
	    data:{
	    	cpath: "${pageContext.request.contextPath}",
			id: "${sessionScope.id}"
	    }
	});



   var oEditors = [];
   
   //추가 글꼴 목록
   //var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
   
   nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: "content",
      sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",   
      htParams : {
         bUseToolbar : true,            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
         bUseVerticalResizer : true,      // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
         bUseModeChanger : true,         // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
         //aAdditionalFontList : aAdditionalFontSet,      // 추가 글꼴 목록
         fOnBeforeUnload : function(){
            //alert("완료!");
         }
      }, //boolean
      fOnAppLoad : function(){
         //예제 코드
         //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
      },
      fCreator: "createSEditor2"
   });
   
   function pasteHTML() {
      var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
      oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
   }
   
   function showHTML() {
      var sHTML = oEditors.getById["content"].getIR();
      alert(sHTML);
   }
   
   function setDefaultFont() {
      var sDefaultFont = '궁서';
      var nFontSize = 24;
      oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
   }
   
   //폼에 submit 이벤트가 일어났을 때 실행할 함수 등록
   document.querySelector("#insertForm")
   		.addEventListener("submit", function(e){
   		 //에디터에 입력한 내용이 textarea 의 value 값이 될 수 있도록 변환한다.
   		 oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
   		 //textarea 이외에 입력한 내용을 여기서 검증하고
   		 const title=document.querySelector("#title").value;
   		 
   		 //만일 폼 제출을 막고 싶으면
   		 //e.preventDefault();
   		 //을 수행하게 해서 폼 제출을 막아준다.
   		 if(title.length < 1){
   			 e.preventDefault();
   		 }
   		});
</script>
</html>