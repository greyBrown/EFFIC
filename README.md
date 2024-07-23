# 나의 구현기능 소개

메세지작성, 메세지조회, 중요메세지&휴지통, 실시간알림

---

## 메세지 작성

> 파일첨부가 가능한 메세지를 1인 이상의 수신자에게 발송 가능
> 

![메세지작성.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/6c0537b8-2cca-4acc-8987-320453d1c1f4/%EB%A9%94%EC%84%B8%EC%A7%80%EC%9E%91%EC%84%B1.png)

1. **팀메세지/조직도/나에게 쓰기** 
    - 조직도 버튼 → 수신인 선택 후 보내기 버튼으로 전송
    - 팀 메세지 버튼 → 본인을 제외한 팀원들이 자동으로 수신자 목록으로 선택
    - ‘나에게 쓰기’ 버튼 → 나에게 쓴 메세지함으로 즉시 메세지 전송
2. **다중파일첨부**
    - 여러 개의 파일을 첨부가능
    - 상세보기 화면에서 툴팁형식으로 첨부파일목록을 확인
    - 첨부파일 칸을 클릭 시 첨부파일을 다운로드
        
        ![첨부파일목록.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/f5162876-dee8-409e-94ab-6cf25110cd13/%EC%B2%A8%EB%B6%80%ED%8C%8C%EC%9D%BC%EB%AA%A9%EB%A1%9D.png)
        

## 메세지 조회

> **보낸 메세지함&받은메세지함 공통 기능**
> 

1. **메세지 상세보기에서 삭제 및 보관**
    - 삭제 → 휴지통으로 이동
    - 보관 → 중요메세지함으로 이동
2. **파일이 첨부된 메세지 식별 및 다운로드**
    - 파일 첨부 메세지 → 클립모양 아이콘으로 식별
    - 첨부파일 칸을 클릭 → 파일 다운로드
    

> **받은 메세지함**
> 

![팀메세지.gif](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/cc69710f-78f0-4035-9077-c861c5b9ca3a/%ED%8C%80%EB%A9%94%EC%84%B8%EC%A7%80.gif)

![팀메세지2.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/e029525f-0ec7-4fd0-afcf-3918cf9961bc/%ED%8C%80%EB%A9%94%EC%84%B8%EC%A7%802.png)

![팀메세지1.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/041bfc0b-4027-4b6d-9c95-c07d2d935c78/%ED%8C%80%EB%A9%94%EC%84%B8%EC%A7%801.png)

1. **미열람메세지 식별**
    - 미열람 메세지는 bold체로 강조 → 열람 후 기본 굵기로 전환
2. **팀 메세지 조회**
    - 팀 메세지 버튼 클릭 → 같은 팀으로부터 수신한 메세지들만 조회
    - 팀 메세지 버튼 다시 클릭 → 전체 메세지 조회로 전환

> **보낸 메세지함**
> 

![보낸메세지목록.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/678c966c-a34a-4b74-88b7-c2faa11e20b5/%EB%B3%B4%EB%82%B8%EB%A9%94%EC%84%B8%EC%A7%80%EB%AA%A9%EB%A1%9D.png)

![보낸메세지읽음.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/a36dda7d-7b88-4521-afa2-1c6c86a151a7/%EB%B3%B4%EB%82%B8%EB%A9%94%EC%84%B8%EC%A7%80%EC%9D%BD%EC%9D%8C.png)

1. **수신여부확인**
    - 메세지를 열람한 수신자 확인

## 중요&휴지통 기능

> **중요메세지함**
> 

![중요메세지설정.gif](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/a91fd776-67de-4b1c-8620-a308a58569a8/%EC%A4%91%EC%9A%94%EB%A9%94%EC%84%B8%EC%A7%80%EC%84%A4%EC%A0%95.gif)

![중요메세지.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/835dacde-b9f9-4446-a8c3-b7699fe49487/%EC%A4%91%EC%9A%94%EB%A9%94%EC%84%B8%EC%A7%80.png)

1. ⭐ **아이콘을 토글하여 중요메세지 설정/해제** 
    - 별 아이콘을 클릭 →  중요메세지 설정/해제
    - 별의 토글 상태를 통해 중요메세지 식별
2. **체크박스를 선택하여 중요메세지 설정**
    - 전체선택/체크박스 클릭 → 보관버튼을 통해 중요메세지 설정
3. **중요메세지함 아이콘 모양에 따라 메세지 종류 식별**
    - 사람 모양 아이콘 → 내게 쓴 메세지
    - 편지 모양 아이콘 → 발신 메세지
    - 아이콘 없음 → 수신 메세지
    

> **휴지통**
> 

![휴지통.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/9b1ea55f-9189-4043-997f-f5cb4e310983/%ED%9C%B4%EC%A7%80%ED%86%B5.png)

1. **휴지통 이동**
    - (보관함) 체크박스/전체선택 클릭 → 삭제버튼을 통해 휴지통 이동
    - (휴지통) 체크박스 → 해제버튼을 통해 보관함 이동
2. **메세지 삭제**
    - 체크박스 클릭 → 삭제버튼을 통해 메세지 삭제
    - 비우기 버튼 클릭 → 휴지통 내 모든 메세지 삭제
    

## 실시간알림

![메세지 전송이 완료되었다는 alert창 이후 새로고침 없이 미열람 메세지 개수가 5→6 으로 증가](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/06091a84-0714-4109-b180-3b767a7497dc/%EC%8B%A4%EC%8B%9C%EA%B0%84%EC%95%8C%EB%A6%BC.gif)

메세지 전송이 완료되었다는 alert창 이후 새로고침 없이 미열람 메세지 개수가 5→6 으로 증가

![실시간알림1.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/1c7d5ac4-d948-4577-a4ef-6f1b079a046c/%EC%8B%A4%EC%8B%9C%EA%B0%84%EC%95%8C%EB%A6%BC1.png)

![실시간알림2.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f08f4b84-05e4-4904-836b-ce80bb3ae186/2ce84899-85e0-43ff-9114-4cfe8edaeea2/%EC%8B%A4%EC%8B%9C%EA%B0%84%EC%95%8C%EB%A6%BC2.png)

1. **미열람 메세지 실시간 알림**
    - 사이드바에서 미열람 메세지 개수 실시간 확인
    - 메세지를 발신 시 → 수신자의 알림 개수 증가
    - 메세지를 상세열람 시 → 알림 개수 감소
