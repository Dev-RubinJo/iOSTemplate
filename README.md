# Swift iOS Template

[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![Swift 5](https://img.shields.io/badge/swift-5.0-orange.svg?style=flat)](https://swift.org) 

Design Pattern of this template was made by Rubin(it's me). And I call it "VAN"



## VAN 란?

VAN(View-Actor-Network) 패턴은 iOS개발을 하면서 고안하게 된 iOS 어플리케이션 아키텍쳐 패턴입니다.

MVC 패턴을 적용하여 개발을 하다가 ViewController 파일이 너무 커지는 문제를 겪고, VIPER 패턴을 적용하면서 한 파일에만 너무 치우치는 문제를 해결하였지만, 또 다른 문제인 파일의 수가 많아진다는 문제를 경험하여 따로 만들게 되었습니다.

VIPER, MVC 패턴을 참고하여 커스텀 하였습니다.

> View-Actor-Network 의 약자입니다.

### VAN 패턴에 관한 간단 설명.

#### - V (View)


- 화면에 표시되는 UI Component, Animation 등 UI로서 구분되는 코드
- View(storyboard, xib 등)와 ViewController가 포함
- 화면 생성 및 화면 전환

#### - A (Actor)

- 화면에 있는 UI컴포넌트에 대한 동작에 관한 코드(ex. Touch Event, Input Text etc.)
- 웹 API등 네트워크(서버)와 통신하는 Network파트의 함수 호출
- 다른 디자인 패턴들의 Entity 관리

#### - N (Network)

- 웹 API등 네트워크(서버)와 통신하는 기능(함수) 코드
- 실제 API를 호출하는 함수를 정의하는 DataManager와 서버의 응답을 받고, 서버에 데이터를 보내는 구조체인 DataResponse, DataRequests로 구분(위 템플릿에는 DataRequests가 없음 추후 만들 예정)

----

