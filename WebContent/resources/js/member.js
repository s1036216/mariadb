/**
 * member javaScript
 */
var app=(function(){ /*god 을 만드는것 */     /*c: controller*/
   var init = function(ctx){
      session.init(ctx);
      /*member.init(); member는 ctx를 전달하지 않는다 */
      onCreate();  /*내부에서는 객체가 아니라 method호출*/
   };
   var onCreate=function(){   /* c: controller */
      setContentView();
      location.href=ctx()+"/home.do"; /*내부는 method 호출이다 */
   };

   var setContentView=function(){ /*v: view */
   };

   var ctx=function(){
      return session.getPath('ctx');
   };
   var js=function(){
      return session.getPath('js');
   };
   var img=function(){
      return session.getPath('img');
   };
   var css=function(){
      return session.getPath('css');
   };
   
   
   /*closure*/
   return {
      init:init,
      ctx:ctx,
      js:js,
      img:img,
      css:css
   };
})();

var session =(function(){
   /*생성자*/
   var init=function(ctx){
      /*setter*/
      sessionStorage.setItem('ctx',ctx);
      sessionStorage.setItem('js',ctx+'/resources/js');
      sessionStorage.setItem('img',ctx+'/resources/img');
      sessionStorage.setItem('css',ctx+'/resources/css');
   };
   /*getter*/
   var getPath=function(x){
      return sessionStorage.getItem(x);
   };
   /*객체 리턴   closure 에 대한 개념이다 */
   return {
      /*key : value*/
      init:init,
      getPath:getPath
   };
})();
/*java에서 객체를 만든것과 같다 파일을 여러개를 만들지 않아도 하나로 만든다 */
var member=(function(){
   var init=function(){
      $('#loginBtn').on('click',function(){
         alert('로그인 버튼 click');

          if($('#input_id')===""){
             alert('ID를 입력해 주세요 ');
             return false;
          }
          if($('#input_pass')===""){
             alert('password 를 입력해 주세요 ');
             return false;
          }
          $('#login_box').attr('action',app.ctx()+"/common.do");
          $('#login_box').attr('method','post');
          return true;
      });
   };
   
   return {
      init:init
   };
})();


/*main*/
var main=(function(){
   var init= function(){ 
      onCreate();
   };
   var onCreate= function(){ /*controller */
      
	   /*자바에서 받은것 모델에서 가져온 데이터의 제어는 이곳에서 한다 */
      setContentView();
      $('.list-group li').eq(0).on('click',function(){
    	  controller.moveTo('member','member_add');
      });
      $('.list-group').children().addClass("list-group-item");
      $('.list-group li').eq(1).on('click',function(){
    	  controller.list('member','member_list','1');
      });
      
      $('.list-group').children().addClass("list-group-item");
      $('.list-group li').eq(2).on('click',function(){
    	  controller.detailStudent(prompt('조회 아이디'));
      });
      $('.list-group').children().addClass("list-group-item");
      $('.list-group li').eq(3).on('click',function(){
    	  controller.moveTo('member','member_add');
      });
   };
   var setContentView=function(){ /*view*/
      var $u1=$("#main_ul_stud");
      var $u2=$("#main_ul_grade");
      var $u3=$("#main_ul_board");
      $u1.addClass("list-group");
      $u2.addClass("list-group");
      $u3.addClass("list-group");
      $('.list-group').children().addClass("list-group-item");
      
   };
   /*closure*/
   return {
      init : init
   };
})();

var memberDetail=(function(){
	var init=function(){
		onCreate();
	};
	var onCreate=function(){
		$('#updateBtn').on('click',function(){
			// id,phone,email,title;
			
			 sessionStorage.setItem('id',$('#id').text());
		      sessionStorage.setItem('phone',$('#phone').text());
		      sessionStorage.setItem('email',$('#email').text());
		      sessionStorage.setItem('title',$('#title').text());
				alert('아이디'+$('#id').text());
				alert('아이디'+$('#phone').text());
				alert('아이디'+$('#email').text());
				alert('아이디'+$('#title').text());
				controller.moveTo('member','member_update');

		});
		setContentView();
	};
	var setContentView=function(){
		alert('멤버디테일 이닛');
	};
	return {
		init : init
	};
})();

var memberUpdate=(function(){
	var init= function(){ 
	      onCreate();
	   };
	   var onCreate= function(){
		   setContentView();
		};
	 var setContentView=function(){
			 var id=sessionStorage.getItem('id');    //가져오는거
			 var phone=sessionStorage.getItem('phone');
			 var email=sessionStorage.getItem('email');
			 var password=('#confirm').val;
			 $('#phone').attr('placeholder',phone);   // 업데이트에뿌리는거
			 $('#email').attr('placeholder',email);
			 $('#confirmBtn').on('click',function(){
				  alert('수정할 아이디:'+id);
				  controller.updateStudent(id,$('#email').val())
			});
	   };
	return {
		init : init
		};
	
})();

/*controller*/
var controller=(function(){
   /*기능들의 집합 이다 / 기능은 public 이다 */
   var init=function(){
      
   };
   
   var moveTo=function(dir,page){
      location.href=app.ctx()+"/"+dir+".do?action=move&page="+page;
   }
   var deleteTarget= function(target){
      prompt(target+'의 ID?');
   }

   var list= function(dir,page,pageNumber){
      location.href=app.ctx()+"/"+dir+".do?action=list&page="+page+"&pageNumber="+pageNumber;
   }
   var updateStudent=function(id){
      alert('수정할  id: '+id);
      location.href=app.ctx()+"/member.do?action=update&page=member_update&id="+id+"email="+email;
   }
   var deleteStudent= function (id){
      alert('삭제할 아이디: '+id);
      location.href=app.ctx()+"/member.do?action=delete&page=member_list&id="+id;
   }
   var detailStudent=function (id){
      location.href=app.ctx()+"/member.do?action=detail&page=member_detail&id="+id;
   }
   var searchName =function(){
       var $name =$('#searchName').val; 
    if(name!=""){
       alert('찾는 이름 : '+name);
       location.href=app.ctx()+"/member.do?action=search&page=member_list&search="+name;
    }else{
       alert('찾을실 이름을 검색하여 주세요 !!!!');
    }
      
   }
   /*var logout= fucntion(){
    * document.getElementById("logout");
   logout.setAttribute("style","color:white");
   logout.setAttribute("onclick","logout('common','index')");
    * }
   }*/
    var logout=function(dir,page){
       location.href=app.ctx()+"/"+dir+".do?action=logout&page="+page;
    }
   return {
      init:init,
      moveTo:moveTo,
      list:list,
      deleteTarget:deleteTarget,
      updateStudent:updateStudent,
      deleteStudent:deleteStudent,
      detailStudent:detailStudent,
      searchName:searchName,
      logout:logout
    };
})();

/*navbar*/
var navbar=(function(){
   var init=function(){
      onCreate();
      $('.dropdown-menu a').eq(0).on('click',function(){
          alert('0');
          controller.moveTo('member','member_add');
       });
       $('.dropdown-menu a').eq(1).on('click',function(){
          alert('1');
          controller.list('member','member_list','1');
       });
       $('.dropdown-menu a').eq(2).on('click',function(){
          alert('2');
          controller.moveTo('member','member_detail');
       });
       $('.dropdown-menu a').eq(3).on('click',function(){
          alert('3');
          controller.moveTo('member','member_detail');
       });
       $('.dropdown-menu a').eq(4).on('click',function(){
          alert('4');
          controller.deleteTarget('member');
       });
       $('.dropdown-menu a').eq(5).on('click',function(){
          alert('5');
          controller.moveTo('grade','grade_add');
       });
       $('.dropdown-menu a').eq(6).on('click',function(){
          alert('6');
          controller.list('grade','grade_list');
       });
       $('.dropdown-menu a').eq(7).on('click',function(){
          alert('7');
          controller.moveTo('grade','grade_detail');
       });
       $('.dropdown-menu a').eq(8).on('click',function(){
          alert('8');
          controller.moveTo('grade','grade_update');
       });
       $('.dropdown-menu a').eq(9).on('click',function(){
          alert('9');
          controller.deleteTarget('grade');
       });
       $('#logout').on('click',function(){
          alert('logout');
          controller.logout('common','home');
       });
   };
   var onCreate=function(){
      setContentView();
   };
   var setContentView=function(){
      var $u1=$("#navbar_ul_stud");
      var $u2=$("#navbar_ul_grade");
      var $u3=$("#navbar_ul_board");
      /*css*/
      $u1.addClass("dropdown-menu");
      $u2.addClass("dropdown-menu");
      $u3.addClass("dropdown-menu");
      /*event*/
      
   };
   return{
      init:init
   }
})();


/*home*/
var home=(function(){
   var init=function(){};
   var onCreate=function(){
      setContentView();
   };
   var setContentView=function(){};
   return{
      init:init,
      onCreate:onCreate
   }
})();


var test=(function(){
	var init=function(){
		onCreate();
	};
	var onCreate=function(){
		setContentView();
	};
	var setContentView=function(){
		$('#confirmBtn').on('click',function(){
			alert('update'+$('#phone').val());
		});
	};
	
	return {
		init : init
	};
})();



