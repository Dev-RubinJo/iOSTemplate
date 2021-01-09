# Swift iOS Template

[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![Swift 5](https://img.shields.io/badge/swift-5.0-orange.svg?style=flat)](https://swift.org) 

Design Pattern of this template was made by RubinJo. And I call it "VA(N)R"

> View-Actor-(Network)-Router

## VA(N)R이란?

VA(N)R(View-Actor-(Network)-Router) 패턴은 iOS개발을 하면서 고안하게 된 iOS 어플리케이션 아키텍쳐 패턴입니다.

MVC 패턴에는 코드가 ViewController 파일에만 지나치게 몰리는 리스크가 있습니다. 이를 Massive View Controller 라고도 하죠. 그래서 VIPER 패턴을 적용하여 프로젝트들을 진행해 보았습니다. 하지만 제가 느끼기에 VIPER 패턴을 대안으로 코드의 분배를 성공시키더라도 이 경우에는 파일의 수가 많아져 개발 초기에 복잡할 수 있다는 불편함이 있었습니다. 이를 개선하기위해 VIPER, MVC 패턴을 참고하여 해당 템플릿에 적용된 패턴을 고안하게 되었습니다.
도메인은 화면을 기준으로 합니다.

**VIPER, MVC 패턴을 참고하여 커스텀 하였습니다.**

```text
VA(N)R 패턴에 관한 간단 설명
- V (View)
	- 화면에 표시되는 UI Component, Animation 등 UI로서 구분되는 코드
	- View(storyboard, xib 등)와 ViewController가 포함

- A (Actor)
	- 화면에 있는 UI컴포넌트에 대한 동작에 관한 코드(ex. Touch Event, Input Text etc.)
	- 웹 API등 네트워크(서버)와 통신하는 Network파트의 함수 호출
	- 데이터 모델에 대한 Entity 소유

- N (Network)
	- 웹 API등 네트워크(서버)와 통신하는 기능(함수) 코드
	- 실제 API를 호출하는 함수를 정의하는 DataManager와 서버의 응답을 받고, 서버에 데이터를 보내는 구조체인 DataResponse, DataRequests로 구분(위 템플릿에는 DataRequests가 없음 추후 만들 예정)
    - ★★★ Network는 도메인에 따라 선택적 구현을 함 ★★★

- R (Router)
    - 화면 이동 및 팝업 띄우기를 담당
```

해당 템플릿 프레임워크는 현재 2021.01.09 기준 Splash와 Main Domain에 대하여 구조를 표시하였습니다.

그 밖의 필요 메서드 혹은 프러퍼티는 Config 영역에 Extension, Protocol, Enum 형식으로 만들어 두었고 그 외의 구분하기 힘든 것들은 Config영역 안에 만들어 두었습니다.

Pure한 Swift의 형식으로 가고자 최대한 Apple의 Swift 가이드를 참고하고 있고, 스위프트 공부를 병행하며 제작하고 있기에 앞으로도 업데이트는 이루어질 예정입니다.

---

#### 참고 링크

* [MVVM, MVC, VIPER 패턴에 대한 글](https://academy.realm.io/kr/posts/krzysztof-zablocki-mDevCamp-ios-architecture-mvvm-mvc-viper/) : 제가 참고했던 MVC, VIPER 패턴 뿐만 아니라 MVVM 패턴까지 같이 정리되어있는 글입니다. 영상과 함께 보시면 더욱 좋습니다.
* [iOS 아키텍쳐 패턴 - VIPER](https://nightohl.tistory.com/entry/iOS-아키텍처-패턴-VIPER) : VIPER 패턴에 대해 좀더 간단하게 그리고 직관적으로 알 수 있게 정리된 블로그 입니다.
* [iOS Swift 개발 디자인 패턴 - Singleton, MVC](http://blog.naver.com/jdub7138/220968244920) : 전반적인 디자인 패턴에 관해서 설명이 잘 되어있는 글입니다. 중간에 MVC에 대한 개념 정리가 잘 되어있어서 추가를 하였습니다.



**Dev-Rubin**
