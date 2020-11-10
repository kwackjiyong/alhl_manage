package com.manage.alhl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping(value = "loginPage")
	public String LoginPage() {
		
		return "user/loginPage";
	}
	
	/*
	 * @Autowired IUserService userSer;
	 * 
	 * @Autowired IShopService shopSer;
	 *//**
		 * Simply selects the home view to render by returning its name.
		 *//*
			 * 
			 * @RequestMapping(value = "sign_in.do", method = RequestMethod.GET) public
			 * String sign_in(Locale locale, Model model) throws Exception {
			 * 
			 * List<UserDTO> userdtos = userSer.userSelect(); // 쿼리문을 날려서 DB에서 모든 게시판 레코드를
			 * 담음 model.addAttribute("userdata", userdtos);
			 * 
			 * return "sign_in"; }
			 * 
			 * // 회원가입
			 * 
			 * @RequestMapping(value = "/sign_in.ing", method = RequestMethod.POST) public
			 * void sign_in(HttpServletRequest request, HttpServletResponse response, Model
			 * model, UserDTO userdto, @RequestParam(value = "pwCheck") String pwCheck)
			 * throws Exception {
			 * 
			 * response.setContentType("text/html; charset=UTF-8");
			 * 
			 * try { if(userdto.getUserId() == "") { PrintWriter out = response.getWriter();
			 * out.println("<script>alert('id를 입력하세요 (회원가입실패)');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; }else
			 * if(userdto.getUserName() == ""){ PrintWriter out = response.getWriter();
			 * out.println("<script>alert('이름을 입력해주세요 (회원가입실패)');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; }else
			 * if(userdto.getUserBirth() == null){ PrintWriter out = response.getWriter();
			 * out.println("<script>alert('생년월일을 입력해주세요 (회원가입실패)');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; }else
			 * if(userdto.getUserPassword() == ""){ PrintWriter out = response.getWriter();
			 * out.println("<script>alert('패스워드를 입력해주세요 (회원가입실패)');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; }else
			 * if(userdto.getUserEmail() == ""){ PrintWriter out = response.getWriter();
			 * out.println("<script>alert('이메일을 입력해주세요(회원가입실패)');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; }else
			 * if(!userdto.getUserPassword().equals(pwCheck)){ PrintWriter out =
			 * response.getWriter();
			 * out.println("<script>alert('재확인 비밀번호가 다릅니다.(회원가입실패)');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; }else{
			 * 
			 * 
			 * //회원가입 userSer.userInsert(userdto);
			 * 
			 * //사용자 이용권 정보 기본설정 ShopDTO shopdto = new ShopDTO();
			 * shopdto.setUserId(userdto.getUserId()); shopdto.setReCount(0);
			 * shopdto.setProductNum(0); shopSer.shopInsert_user(shopdto); //인증이메일 전송
			 * Gmail.mailSend(userdto.getUserId(),userdto.getUserEmail());
			 * 
			 * PrintWriter out = response.getWriter(); out.println("<script>alert('" +
			 * userdto.getUserName() + "님 회원가입 완료를 축하드립니다.');</script>"); out.flush(); }
			 * 
			 * }catch(Exception e){ PrintWriter out = response.getWriter();
			 * out.println("<script>alert('정보를 다시 입력해주세요 (회원가입실패)');</script>");
			 * out.flush(); }finally { PrintWriter out = response.getWriter();
			 * out.println("<script>location.href='index.do'</script>"); out.flush(); }
			 * 
			 * }
			 * 
			 * // 로그인
			 * 
			 * @RequestMapping(value = "/login.ing", method = RequestMethod.POST) public
			 * void login_do(HttpServletRequest request, HttpServletResponse response, Model
			 * model, UserDTO userdto) throws Exception {
			 * response.setContentType("text/html; charset=UTF-8");
			 * request.setCharacterEncoding("UTF-8");
			 * 
			 * // id가 있는지 확인하고 해당 id에서 각종 정보를 검색합니다. UserDTO selectDTO =
			 * userSer.userSelectOne(userdto); // 아이디가 존재할 때 try { if
			 * (selectDTO.getUserPassword().equals(userdto.getUserPassword())) { HttpSession
			 * session = request.getSession(); session.setAttribute("userData", selectDTO);
			 * // 유저 정보 한꺼번에 넣음 JsoupParser.webDriver_init(request); //세션에 웹드라이버 생성
			 * model.addAttribute("userData", selectDTO); // 유저 정보 한꺼번에 넣음 //이용권 정보도 세션에
			 * 추가하는 과정 ShopDTO shopdto = shopSer.shopSelectOne(selectDTO);//사용자 정보로 이용권 정보
			 * 가져옴 if(shopdto == null) { shopdto = new ShopDTO(); shopdto.setProductNum(0);
			 * //등급을 0으로 설정 } List<Shop_ProductDTO> productdtos =
			 * shopSer.shopProduct_info(); // 상품리스트 정보 가져옴
			 * session.setAttribute("user_shopData",shopdto);//세션에 이용권 정보 전달
			 * session.setAttribute("user_productName"
			 * ,productdtos.get(shopdto.getProductNum()).getProductName());//세션에 사용자 이용권 명
			 * 전달
			 * 
			 * 
			 * PrintWriter out = response.getWriter(); out.println("<script>alert('" +
			 * userdto.getUserId() + "님 로그인 성공');</script>"); out.flush(); } else {
			 * System.out .println("DBPW:" + selectDTO.getUserPassword() + "\n" + "inputPW:"
			 * + userdto.getUserPassword()); PrintWriter out = response.getWriter();
			 * out.println("<script>alert('패스워드가 틀렸습니다.');</script>"); out.flush(); } }
			 * catch (Exception e) { PrintWriter out = response.getWriter();
			 * out.println("<script>alert('" + userdto.getUserId() +
			 * "는 존재하지 않는 아이디입니다.');</script>"); out.flush(); } finally { PrintWriter out =
			 * response.getWriter();
			 * out.println("<script>location.href='index.do'</script>"); out.flush(); } }
			 * 
			 * 
			 * // 로그아웃
			 * 
			 * @RequestMapping("/logout.ing") public String logout(HttpSession session) {
			 * session.invalidate(); return "redirect:/index.do"; }
			 * 
			 * 
			 * // 회원정보 수정
			 * 
			 * @RequestMapping(value = "/userModify.ing", method = RequestMethod.POST)
			 * public void update_do(HttpSession session, HttpServletRequest request,
			 * HttpServletResponse response, Model model, UserDTO userdto) throws Exception
			 * { response.setContentType("text/html; charset=UTF-8");
			 * request.setCharacterEncoding("UTF-8");
			 * 
			 * if (session.getAttribute("userData") != null) { // 로그인 상태일 때 UserDTO udto =
			 * (UserDTO) session.getAttribute("userData"); // 세션에서 사용자 정보 가져옴
			 * userdto.setUserId(udto.getUserId()); if
			 * (!userdto.getUserPassword().equals(userdto.getUserEmailHash())) { PrintWriter
			 * out = response.getWriter();
			 * out.println("<script>alert('재입력된 패스워드가 다릅니다.');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; } else
			 * if (userdto.getUserPassword() == "") { PrintWriter out =
			 * response.getWriter();
			 * out.println("<script>alert('변경할 패스워드를 입력해주세요.');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; } else
			 * if (userdto.getUserEmail() == "") { PrintWriter out = response.getWriter();
			 * out.println("<script>alert('변경할 이메일을 입력해주세요.');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; } else
			 * {
			 * 
			 * if (userSer.userUpdate(userdto) == 1) { session.invalidate(); // 로그아웃
			 * PrintWriter out = response.getWriter();
			 * out.println("<script>alert('회원정보 변경 성공');</script>");
			 * out.println("<script>alert('다시 로그인 해주세요');</script>");
			 * out.println("<script>location.href='index.do'</script>"); out.flush();
			 * return; } else { PrintWriter out = response.getWriter();
			 * out.println("<script>alert('회원정보 변경 실패!');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; } } } }
			 * 
			 * // 회원정보 수정
			 * 
			 * @RequestMapping(value = "/userDelete.ing", method = RequestMethod.GET) public
			 * void userDelete_ing(HttpSession session, HttpServletRequest request,
			 * HttpServletResponse response, Model model) throws Exception {
			 * response.setContentType("text/html; charset=UTF-8");
			 * request.setCharacterEncoding("UTF-8");
			 * 
			 * 
			 * if (session.getAttribute("userData") != null) { // 로그인 상태일 때 UserDTO udto =
			 * (UserDTO) session.getAttribute("userData"); // 세션에서 사용자 정보 가져옴
			 * 
			 * if(userSer.userDelete(udto)==1) { PrintWriter out = response.getWriter();
			 * out.println("<script>alert('회원탈퇴가 완료되었습니다.');</script>");
			 * out.println("<script>location.href='index.do'</script>"); out.flush();
			 * return; }else { PrintWriter out = response.getWriter();
			 * out.println("<script>alert('회원정보 삭제 실패! 1:1문의를 이용해주세요');</script>");
			 * out.println("<script>history.back();</script>"); out.flush(); return; } }
			 * 
			 * }
			 * 
			 * 
			 * // 이메일 인증
			 * 
			 * @RequestMapping(value = "/emailCheck.ing", method = RequestMethod.GET) public
			 * void user_EmailCheck(HttpSession session, HttpServletRequest request,
			 * HttpServletResponse response, Model model,@RequestParam(value = "userId")
			 * String userId,@RequestParam(value = "code") String code) throws Exception {
			 * 
			 * response.setContentType("text/html; charset=UTF-8");
			 * request.setCharacterEncoding("UTF-8");
			 * 
			 * UserDTO dto = new UserDTO(); dto.setUserId(userId);
			 * dto.setUserEmailHash(code); int result = userSer.userEmailCheck(dto);
			 * PrintWriter out; switch(result) { case 0 : out = response.getWriter();
			 * out.println("<script>alert('이메일 인증실패 1:1문의를 이용해주세요');</script>");
			 * out.println("<script>location.href='index.do';</script>"); out.flush();
			 * break; case 1 : out = response.getWriter();
			 * out.println("<script>alert('이메일 인증성공!');</script>");
			 * out.println("<script>location.href='index.do';</script>"); out.flush();
			 * break;
			 * 
			 * case 2 : out = response.getWriter();
			 * out.println("<script>alert('이미 인증되었습니다.');</script>");
			 * out.println("<script>location.href='index.do';</script>"); out.flush();
			 * break; default: break;
			 * 
			 * } }
			 * 
			 * 
			 * // 이메일 인증코드 재전송
			 * 
			 * @RequestMapping(value = "/emailSend.ing", method = RequestMethod.GET) public
			 * void user_EmailSend(HttpSession session, HttpServletRequest request,
			 * HttpServletResponse response, Model model) throws Exception {
			 * 
			 * response.setContentType("text/html; charset=UTF-8");
			 * request.setCharacterEncoding("UTF-8");
			 * 
			 * PrintWriter out; if (session.getAttribute("userData") != null) { // 로그인 상태일 때
			 * UserDTO udto = (UserDTO) session.getAttribute("userData"); // 세션에서 사용자 정보 가져옴
			 * Gmail.mailSend(udto.getUserId(), udto.getUserEmail()); // 이메일 인증 재전송 out =
			 * response.getWriter();
			 * out.println("<script>alert('인증코드를 재발송했습니다.');</script>");
			 * out.println("<script>location.href='index.do';</script>"); out.flush(); }else
			 * { out = response.getWriter();
			 * out.println("<script>alert('로그인되어있지않아 인증코드발송에 실패했습니다.');</script>");
			 * out.println("<script>location.href='index.do';</script>"); out.flush(); } }
			 * 
			 * 
			 * 
			 * 
			 * // 회원정보 수정
			 * 
			 * @RequestMapping("/member_modify.do") public String modify(HttpServletRequest
			 * request, HttpServletResponse response, Model model, Member_dto dto) {
			 * 
			 * System.out.println("member_modify()페이지");
			 * 
			 * return "member_modify"; }
			 * 
			 * // 회원 수정
			 * 
			 * @RequestMapping("/member_modify.ing") public String
			 * modify_ing(HttpServletRequest request, HttpServletResponse response, Model
			 * model, Member_dto dto) {
			 * 
			 * System.out.println("member_modify()진행");
			 * 
			 * int result = memService.memberUpdate(dto);
			 * 
			 * model.addAttribute("modify_request", result);
			 * 
			 * if (result == 1) { System.out.println("회원수정 성공"); } else {
			 * System.out.println("실패"); } return "member_modify"; }
			 * 
			 * // 회원 삭제
			 * 
			 * @RequestMapping("/member_delete.do") public String delete(HttpServletRequest
			 * request, Model model, Member_dto dto) {
			 * 
			 * System.out.println("member_delete()");
			 * 
			 * return "member_delete"; }
			 * 
			 * @RequestMapping("/member_delete.ing") public String
			 * delete_ing(HttpServletRequest request, HttpServletResponse response, Model
			 * model, Member_dto dto) {
			 * 
			 * System.out.println("member_delete()처리");
			 * 
			 * int delete_result = memService.memberDelete(dto);
			 * 
			 * if (delete_result == 1) { System.out.println("탈퇴성공");
			 * 
			 * HttpSession session = request.getSession(); session.invalidate(); } else {
			 * System.out.println("탈퇴 실패"); } return "index"; }
			 * 
			 * 
			 * 
			 * @RequestMapping(value = "/mypage.do", method = RequestMethod.GET) public
			 * String mypage_do(HttpServletRequest request, HttpServletResponse response,
			 * Model model) throws Exception {
			 * 
			 * response.setContentType("text/html; charset=UTF-8");
			 * request.setCharacterEncoding("UTF-8");
			 * response.setCharacterEncoding("UTF-8"); HttpSession session =
			 * request.getSession(); if(session.getAttribute("userData") != null){ //로그인 상태일
			 * 때 UserDTO userdto = (UserDTO)session.getAttribute("userData"); // 세션에서 사용자 정보
			 * 가져옴 ShopDTO shopdto = shopSer.shopSelectOne(userdto);//사용자 정보로 이용권 정보 가져옴
			 * if(shopdto == null) { shopdto = new ShopDTO(); shopdto.setProductNum(0);
			 * //등급을 0으로 설정 }
			 * 
			 * List<Shop_ProductDTO> productdtos = shopSer.shopProduct_info(); // 상품리스트 정보
			 * 가져옴
			 * 
			 * model.addAttribute("shopData" ,shopdto);//모델에 이용권 정보 전달
			 * model.addAttribute("user_productName"
			 * ,productdtos.get(shopdto.getProductNum()).getProductName());//모델에 사용자 이용권 명
			 * 전달 }else {// 비로그인상태일 때 PrintWriter out = response.getWriter();
			 * out.println("<script>alert('로그인 후 이용해주세요.');</script>"); out.flush(); return
			 * "index"; }
			 * 
			 * return "mypage"; }
			 */
}
