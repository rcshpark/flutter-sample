# About Project

- flutter kakao SDK를 이용하여 카카오계정,카카오톡으로 로그인을 할 수 있는 기능 구현

```
  void _get_user_info() async {
    try {
      User user = await UserApi.instance.me();
      print('사용자 정보 요청 성공'
          '\n회원번호:${user.id} '
          '\n닉네임:${user.kakaoAccount?.profile?.nickname}');
    } catch (error) {
      print('사용자 정보 요청 실패 $error');
    }
  }
```
- _get_user_info() 함수를 생성하여 로그인 성공시 회원번호, 닉네임을 print 하도록 구성 
> 앱 출시할때 print문을 사용하게 되면 개인정보가 유출될 수 있기 때문에 배포 시 print문은 제거해야함.

- try{ } catch{ }문을 이용한 오류처리
 
