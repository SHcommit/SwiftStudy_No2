### 델리게이트 패턴(콜백함수느낌) , 최초 응답자(First Responder) , 이미지 피커

🌱 델리게이트(delegate : 위임하다!!)
> 위임자를 가지고 있는 객체가 다른 객체에게 자신의 일을 위임하는 형태의 디자인 패턴
> >iOS는 위임 패턴을 많이 사용한다.

🌱 디자인 패턴
> 디자인(프로그래밍 구성 디자인) + 패턴(공통적인 문제가 반복해서 나타날 때 이런 유사한 점)
> > 객체지향 프로그래밍에서 객체간 설계 문제를 해결하기 위해서 설계를 구조화함?!?!
> 설계문제를 합리적으로 해결하기 위한 목적!
>
> 여러가지 패턴의 종류가 있다.

---

### 🔭 델리게이트 패턴이란?

> 객체지향 프로그래밍에서 하나의 객체가 모든 일 처리 x
> >처리해야할 일 중 ✨일부를 다른 객체에게 넘기는 것(위임하는 것)
> >
> > 다시말해 위임할 수 있는 객체의 구현부가 적어질 수 있음.

:white_medium_square: 기능 분담해서 나누는 것이 델리게이트 패턴이다!

#### :black_medium_square: 예를 들어 블루투스 키보드를 누르면 
> 키보드 -> 특정한 '키' 눌림 신호가 운영체제로 전송 -> 진행중인 프로세스의 이벤트 처리 함수 발생 알림 -> 해당 함수  실행 
> > 이 경우에도 클릭 이벤트 인식 -> 프로그램에 전달해주는 "위임 객체"가 있기에 가능하다. <델리게이트 패턴에 의존적,,> p420

:white_medium_square: 이런 경우 우리는 해당 헨들러 함수만 구현하면 된다. ( 이 중간 과정을 델리게이트에 의해  다루어져서. 내가 처리하지 않아도 됨 )

:black_medium_square: iOS에서는 위 상황처럼 특정 이벤트 발생에 대해 반응할 수 있는 함수를 델리게이트에서 미리 정의(**프로토콜**로)했기 때문에, 그냥 정의된 메서드를 구현하면 된다.

✨ 따라서 **특정 이벤트**가 **발생**했을 때 **알려주는 방법**은 미리 정의된 **델리게이트** 메서드를 사용하는 것이다.

✨✨ iOS의 델리게이트 패턴을 사용하는 모든 객체는 **프로토콜**(델리게이트 메서드 정의)을 가진다.

:white_medium_square: 따라서 그냥 해당 델리게이트 프로토콜 메서드 구현만 하면 된다!!

:black_medium_square: 델리게이트 패턴을 갖는 포토토콜은 
> 객체 클래스명 + Delelgate로 이루어짐

✨✨✨쉽게 생각하면. 특정 객체에 델리게이트 선언을 할 경우 특정 이벤트 발생시점에 특정 함수를 호출함. (콜백함수 느낌?)

---

### 🔭 First Responder(최초 응답자)
> 최초 응답자 설정
> 
>> .becomeFirstResponder()
>
> 최초 응답자 해제
>> .resignFirstResponder()

:white_medium_square: 윈도우 프로그램에서의 Focus와 유사한 개념

:black_medium_square: UIWindow객체는 사용자의 터치 이벤트를 내부 View로 전달한다.

:white_medium_square: 특정 화면이 present됬을 때 우선적으로 응답할 객체를 가리키도록 하는 것이 **최초 응답자**이다.

> 예를들어
> > Scene에 TextField 의 객체 tf 아울렛 변수를 참조했다면, 최초응답자를 tf로 할경우 화면 전환, 로딩 시 tf가 바로 반응됩니다.( 예로 키보드가 바로 올라옴)
> **self**.tf.**becomeFirstResponder()**

:black_medium_square: 최초 응답자 == Focus

---

### 🔭 이미지 피커(ImagePicker)

<img height="500" width="230" alt="ch7_imgPicker_1" src="https://user-images.githubusercontent.com/96910404/164752172-9a809370-c024-46de-b348-70cc0b6705dd.png" align="left">
<img height="500" width="230" alt="ch7_imgPicker_2" src="https://user-images.githubusercontent.com/96910404/164752182-71348e03-2b79-4a2a-a66b-1e1f1faa9da3.png" align="left">
<img height="500" width="230" alt="ch7_imgPicker_3" src="https://user-images.githubusercontent.com/96910404/164752196-42ded6af-85ab-4e76-a09f-7133fe4ec057.png" align="left">
<img height="500" width="230" alt="ch7_imgPicker_4" src="https://user-images.githubusercontent.com/96910404/164752202-32ca9f8a-be9c-4360-9b56-7a84b0c45497.png" align="left">

> _

> 버튼 누를 경우 ImagePicker를 통해 내장된 사진 라이브러리에서 사진을 클릭 후 수락 한 경우에 이미지가 Scene에 로드됩니다.

> UIImagePickerController()

:white_medium_square: 카메라 쵤영 후 사진 불러오기, 앨범에서 이미지 선택하기 등 이미지를 선택할 때 사용되는 컨트롤러

:black_medium_square: 단순하게 Image를 가져올 수 있다.
> ex) 카메라에서 이미지 추출하는 과정 구현X

:white_medium_square: UIViewController를 상속받아 화면 전체를 덮음
> present 로 화면 전환을 통해 이미지를 가져오는 것이기에 이전화면으로 돌아갈려면 dismiss필수

:black_medium_square: 이미지 피커 이후에 실행된 특정 VC(알람, 사진) 원활하게 실행되기 위해선,
> self.presentingViewController?.dismiss(animated:completion:)

>두번째 매개변수에 클로저로 이후에 실행될 VC 정의하면 된다.
