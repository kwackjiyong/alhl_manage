package com.manage.alhl.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

//자동으로 페이징을 위한 제네릭 리스트로 잘라주는 페이징 API를 구현했습니다.
public class Paging {// 2019.12.14 수정
	//////////////////////////////////////////////////////////////////
	//┌────────────────────────────────────────────────────────────┐//
	//│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│//
	//│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Made by Jiyong.K▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│//
	//│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│//
	//│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒MVC Paging API▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│//
	//│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│//
	//└────────────────────────────────────────────────────────────┘//
	//////////////////////////////////////////////////////////////////
	
	// 메소드 paging_list() 설명 
	// DTO 리스트를 페이징에 쓰기위해 제네릭타입의 2차원 리스트로 만듭니다.
	//	분할갯수와 select된 전체리스트를 인자값으로 받아오며
	// List<List<DTO>>의 2차원 배열구조로 리스트들을 분할갯수에맞추어 잘라서 넣습니다.
	// 예시) 전체리스트 [1,2,3,4,5,6,7,8,9,10] , 분할갯수 3 입력 -> 2차원 리스트[[1,2,3],[4,5,6],[7,8,9],[10]] 반환  
	//*위에서 숫자로 나타낸 것은 dto.get(Num)에 들어가는 Num을 표현한 것일 뿐 실제로는 dto들이 들어갔습니다.
	// 이로써 리스트의 인덱스가 간단히 페이지번호가 되며 해당 페이지 안의 리스트의 관리도 정확하게 가능하게 됩니다.
	public static List<?> paging_list(List<?> list,int separatorNum) {
		//list를 분할해서 담을 페이지 컨테이너 생성
		List<Object> pageContainer = new ArrayList<Object>(); // 후에 리스트를 add 해주기때문에 2차원 리스트가 됩니다.
		for(int i=0;i<list.size()/separatorNum+1;i++) { // 분할갯수로 나눈 값을 최대치로 잡습니다. 나눈값은 기준치보다 상대적으로 1작은 값이기 때문에  최대치에 +1 해줍니다.
 			List<Object> seperateList = new ArrayList<Object>(); // 2차원리스트 컨테이너에 add할 빈 1차원 리스트를 생성합니다.  
			for(int j=separatorNum*i;j<(separatorNum*(i+1))&&j<list.size();j++){ //분할 갯수가 페이지의 단위이기 때문에 분할 갯수 *2차원 컨테이너의 인덱스를 시작단위로 잡으며 
																				   // 반복 횟수는 기본적으로 분할갯수만큼 반복하지만 마지막리스트의경우 분할갯수보다 작은 리스트가 생성될 때가 있으므로
																				   // 리스트의 최대 인덱스에 도달하면 빠져나갑니다.
				seperateList.add(list.get(j));//이전에 검색해서 가져온 전체리스트(1차원)에서 DTO를 가져와 분할리스트(1차원)에 반복 추가합니다.
			}
			if(seperateList.size()!=0) { // 마지막에 빈값이면 추가하지않습니다. 분할 갯수의 배수일 경우 빈리스트가 생성되는 문제가 있습니다.
				pageContainer.add(seperateList); //위의 for문에서 채워진 분할리스트(1차원)을 컨테이너(2차원)에 페이지 수만큼 반복해서 담습니다.
			}
		}
		return pageContainer; // 분리저장된 컨테이너(2차원)을 리턴합니다.
	}
	
	
	
	// 메소드 pageNum_list() 설명 
	// 전체 리스트와 분할 갯수를 가지고 페이지번호의 리스트를 출력하는 메서드입니다.
	// paging_list와 유사한 메서드로 전체 리스트의 사이즈와 분할갯수를 통해 페이지의 갯수를 알아내고 
	// 페이지의 갯수와 리스트 분할 갯수로 (페이지분할 갯수를 따로 안두었음 추후 추가 가능) 페이지그룹을 잘라 2차원 리스트에 담습니다.
	// 예시) 전체리스트 [1,2,3,4,5,6,7,8,9,10] , 분할갯수 3 입력 -> 2차원 리스트[[1,2,3],[4,5,6],[7,8,9],[10]] 반환 
	public static ArrayList<ArrayList<Integer>> pageNum_list(List<?> separated_dtos,int pgseparatorNum){
		ArrayList<ArrayList<Integer>> pageNum_list = new ArrayList<ArrayList<Integer>>();//페이지 그룹을 담을 2차원 리스트 선언 및 초기화
		ArrayList<Integer> seperatePageList = new ArrayList<Integer>(); // 페이지목록을 담을 1차원 리스트 선언 및 초기화
		for(int i=1;i<=separated_dtos.size();i++) {
			seperatePageList.add(i); // 1차원 리스트에 페이지 번호를 차곡차곡 담습니다.
			if( 0 == i % pgseparatorNum || i >= separated_dtos.size()) { // 1차원 리스트에 넣은 값들이 이제 그룹의 분할갯수의 분기점을 넘어가거나 마지막 페이지일 경우
				pageNum_list.add(seperatePageList); // 채워진 1차원리스트를 2차원 컨테이너에 담습니다.
				seperatePageList=new ArrayList<Integer>();// 채워졌던 1차원리스트를 다시 생성하여 비워줍니다. 
														  // clear()나 다른방법을 사용하여 값만 비운다면 주소값이 공유되어 그것이 추가된 2차원 리스트값도 초기화 되거나 똑같이 투영되어 복사됩니다.
			}
		}
		return pageNum_list;
	}
	
	
	
	
	
	
	
	// 메소드 pageNum_list() 설명 
	// 페이지 번호가 어떤 페이지 번호 그룹에 들어있는지 나타내 줍니다.
	// 페이지 넘버와 페이지 2차원 리스트를 매개변수로 받습니다.
	// 이전의 예시) 전체리스트 [1,2,3,4,5,6,7,8,9,10] , 분할갯수 3 입력 -> 2차원 리스트[[1,2,3],[4,5,6],[7,8,9],[10]] 반환 
	//그룹번호	0번		1번		2번	  3번  <-- 이 번호를 찾아서 뿌려서 view단에서는 번호에 해당하는 인덱스의 페이지번호 리스트를 불러올 수 있게 합니다. (기존의 페이지번호는 2차원dto리스트에서 해당 기능을 수행합니다.)	
	//  [[1,2,3],[4,5,6],[7,8,9],[10]] 이러한 리스트
	public static int pageNum_ListNum(ArrayList<ArrayList<Integer>> pageNum_List, int pageNum) {
		int pageNum_listNum = 0; // 페이지의 리스트 그룹 번호를 초기화합니다. 
		for(int i=0; i<pageNum_List.size();i++) { //2차원페이지 리스트의 인덱스 최대치 만큼 반복 (그룹번호 갯수만큼)(예시에서는 4개가 존재)
			for(int j=0;j<pageNum_List.get(i).size();j++) { // 해당 인덱스의 1차원리스트의 크기만큼 반복 (해당 그룹의 번호 갯수만큼) (예시에서 2번그룹은 3개 3번그룹은 1개가 존재)
				if(pageNum == pageNum_List.get(i).get(j)) { // 검색하는 페이지와 리스트에 존재하는 페이지와 비교분석합니다. 
					pageNum_listNum = i; // 페이지가 존재하는 리스트 그룹이었기 때문에 해당 리스트 그룹번호를 저장합니다.
				}
			}
		}
		return pageNum_listNum; // 검색으로 찾은 그룹번호를 반환합니다.
	}
	
	
	
	
	
	// 메서드 lastPaging() 설명
	// 마지막 페이지를 찾는 메서드
	// 2차원 dto 리스트, 2차원 페이지 리스트, 분할 갯수를 매개변수로 받습니다.
	public static int lastPaging(List<?> list , ArrayList<ArrayList<Integer>> pageNum_list,int separatorNum , int pgseparatorNum) {
		int lastPageNum = 0; // 마지막 페이지번호를 담을 변수 선언 및 초기화합니다.
		//마지막 페이지번호가 몇인지 찾습니다.
		for(int i=0;i<pageNum_list.size();i++) { //2차원 페이지 리스트의 최대치만큼 반복합니다.
			for(int j=0;j<pageNum_list.get(i).size();j++) { // 해당 인덱스의 1차원 페이지 리스트의 최대치만큼 반복합니다.
				lastPageNum++; // 페이지를 계속 세어줍니다.
			}
		}
		// 이 아래 부분은 2차원 dto리스트 알고리즘을 처음 만들어서 
		// 나중에 짠 2차원 페이지 리스트처럼 보완된 방식으로 짜지않았기 때문에 따로 찾아야합니다. 
		// 때문에 괜히 매개변수도 필요합니다. *추후 수정 예정입니다.
		if(lastPageNum%pgseparatorNum == 0 && list.size()%separatorNum == 0) { // 페이지의 갯수와 dto의 갯수가 모두 분할갯수의 배수일 경우 페이지 리스트에 허값이 추가되는 빈틈이 있어 그를 바로잡는 조건문입니다.
			lastPageNum--;
		}
		return lastPageNum; //마지막 페이지 반환
	}
	
	
	
	
	//자동으로 페이징을 해줍니다.
	public static void AutoPaging(HttpServletRequest request,HttpServletResponse response,Model model,List<?> list, int pageNum, int separatorNum,int pgseparatorNum) {
		ArrayList<ArrayList<?>> seperated_dtos =(ArrayList<ArrayList<?>>) Paging.paging_list(list, separatorNum); // 5개씩보기로 5개씩 페이지를 분할하여 ArrayList에 담음
		ArrayList<ArrayList<Integer>> pageNum_list = Paging.pageNum_list(seperated_dtos, pgseparatorNum);// 5개씩보기에 맞춰 생성된 페이지번호를 5개씩 잘라서 ArrayList로 보관합니다.
		int pagelistNum = Paging.pageNum_ListNum(pageNum_list, pageNum); // 위에서 작성된 페이지번호리스트의 5개씩 그룹된 그룹번호입니다.
		int lastPageNum = Paging.lastPaging(list, pageNum_list,separatorNum,pgseparatorNum);
		
		model.addAttribute("list",seperated_dtos.get(pageNum-1)); // 7개씩잘랐던 페이지리스트들을 페이지 넘버로 지정해서 7개 이하를 가져옵니다. 
		model.addAttribute("listPageNum",pageNum); // 페이지넘버를 넣어줍니다.
		model.addAttribute("listPageNumList_lastNum",lastPageNum);
		model.addAttribute("listPageNumList",pageNum_list.get(pagelistNum)); // 페이지번호리스트의 그룹번호를 페이지번호리스트에 넣어 해당 페이지번호리스트를 가져옵니다.
		
	}

	
	
	
	//연습장
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	/*//알고보니 불가능한 코드 손 - 절
	 * //리스트와 몇개까지 보는지 해당 게시판 레코드번호를 넣으면 해당 게시판 레코드번호가 몇번 페이지에 속하는지를 역으로 알려줍니다
	 * public static int findPaging(List<?> list ,int seperatingNum, int recordNum)
	 * { int pageNum = 1; int count = list.size()/seperatingNum+1; for(int
	 * i=list.size()/seperatingNum+1;i>0;i--) { for(int
	 * j=seperatingNum*i;j>seperatingNum*(i-1)&&j>0;j--){
	 * if(recordNum==list.get(j).get??Id()) { // <---- 제네릭이라 이부분이 불가능;; 손 - 절
	 * pageNum=i; } } } return pageNum; }
	 */
	
	/*//아래의 식으로 변형하여 해당 레코드의 페이지번호를 역추적 할 수 있음
	 List<PostDTO> postdtos= postSer.postSelectALL(); // 쿼리문을 날려서 DB에서 모든 게시판 레코드를 담음
		int seperateNum = 5; // 레코드 분할 갯수
		int pageNum = 1;
		for(int i=1;i<postdtos.size();i++) {
			if(postdtos.get(i).getPostId() == recodeNum) {
				pageNum = i/seperateNum+1;
			}
		}
	 */
	
	
	//문제점이 있었던 방식 리스트 분할갯수와 페이지 분할갯수를 나누지 않고 통합해서 계산하는 방법이었음
	/*
	// 메소드 pageNum_list() 설명 
	// 전체 리스트와 분할 갯수를 가지고 페이지번호의 리스트를 출력하는 메서드입니다.
	// paging_list와 유사한 메서드로 전체 리스트의 사이즈와 분할갯수를 통해 페이지의 갯수를 알아내고 
	// 페이지의 갯수와 리스트 분할 갯수로 (페이지분할 갯수를 따로 안두었음 추후 추가 가능) 페이지그룹을 잘라 2차원 리스트에 담습니다.
	// 예시) 전체리스트 [1,2,3,4,5,6,7,8,9,10] , 분할갯수 3 입력 -> 2차원 리스트[[1,2,3],[4,5,6],[7,8,9],[10]] 반환 
	public static ArrayList<ArrayList<Integer>> pageNum_list(List<?> list,int seperatingNum){
		ArrayList<ArrayList<Integer>> pageNum_list = new ArrayList<ArrayList<Integer>>();//페이지 그룹을 담을 2차원 리스트 선언 및 초기화
		//페이지의 총갯수 = list.size()/seperatingNum;
		ArrayList<Integer> seperatePageList = new ArrayList<Integer>(); // 페이지목록을 담을 1차원 리스트 선언 및 초기화
		System.out.println("listsize:"+list.size());
		for(int i=1;i<(list.size()/seperatingNum)+2;i++) { // 페이지는 기본 1 페이지 부터 이기 때문에 인덱스는 1부터 시작되며 페이지 최대치는 전체리스트 갯수에서 분할갯수로 나눈 값이며 
														   //나눈값은 상대적으로 1적기때문에 +1 인덱스를 1부터 시작했기때문에 또 +1 해서 +2 했습니다.
			int lastPage; //마지막 페이지를 담을 변수 선언 
			if(list.size()%seperatingNum == 0 ) {
				lastPage= (list.size()/seperatingNum); // 페이지는 나눠서 생긴 값이기 때문에 리스트의 갯수가 분할 갯수의 배수일 경우 1개의 허값이 이미 추가로 생성되므로 따로 추가가 필요없습니다
			}else {
				lastPage= (list.size()/seperatingNum)+1; // 리스트의 갯수가 분할 갯수의 배수가 아닐경우 나눈값이기 때문에 상대치가 1적기 때문에 +1 해주었습니다.
			}
				seperatePageList.add(i);	//1차원 리스트에 페이지번호들을 차곡차곡 담습니다.
			if( 0 == i % seperatingNum ||i == lastPage) { // 1차원 리스트에 넣은 값들이 이제 그룹의 분할갯수의 분기점을 넘어가거나 마지막 페이지일 경우
				pageNum_list.add(seperatePageList); // 채워진 1차원리스트를 2차원 컨테이너에 담습니다.
				seperatePageList=new ArrayList<Integer>();// 채워졌던 1차원리스트를 다시 생성하여 비워줍니다. 
														  // clear()나 다른방법을 사용하여 값만 비운다면 주소값이 공유되어 그것이 추가된 2차원 리스트값도 초기화 되거나 똑같이 투영되어 복사됩니다.
			}
		}
		return pageNum_list; //1차원 리스트로 채워진 2차원 리스트를 반환합니다.
	}
	*/
}
