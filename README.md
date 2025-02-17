 <h1 align="center"> ADVANCE FLUTTER </h1>

###

<h3 align="center">1.1 Switch Dark Theme to Light Theme</h3>

<h1></h1>



<div align="center">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/bfd5b4f1-a11d-4671-bdda-18a9e8033880" height="500">
  <img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/7b34b83a-4ee2-4748-9deb-1902c9932ba2" height="500">
</div>

<h1></h1>

<h3>Write In MaiterialApp Class </h3>

```bash
    darkTheme: ThemeData.dark(),
    theme: ThemeData.light(),
    themeMode: isDark?ThemeMode.dark:ThemeMode.light,
```

<h3>Globle Value</h3>

```bash
    bool isDark=false;
```

<h3>Button Code</h3>

```bash
        GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=false;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorYellow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Light Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorRed,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Dark Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
```

<h1></h1>

<h3 align="center">Stepper Widget</h3>

<h1></h1>

<div align="center">

<h3 align="center">Horizontal</h3>
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/9cbb3358-67bb-4ea1-86e3-5e4ea3fb2fff" height="500">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/c035c4e0-882d-40fe-8858-604841f64f7c" height="500">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/d6086f80-0e11-4a0b-a049-68adc01f87dc" height="500">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/98de94dc-de51-478a-ab31-008b159d7da1" height="500">
<h3 align="center">Vertical</h3>
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/d8450b91-dc86-4887-b805-d71c2069a57f" height="500">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/fda0302e-3298-4f80-ab38-c4457bd5607b" height="500">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/e2dc593e-9fa6-4e89-a0f8-feeff8560de6" height="500">

</div>



https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/21b1fa05-45bc-486b-a7ac-8d7873fea383

<h1></h1>
<h3 align="center">Provider Tree</h3>
<h1></h1>

<div align="center">
  <img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/assets/144161200/034c2da5-0b07-4ac0-a50a-aecf5fc23680" height=450px hspace=20>
</div>

## What Is State Management?

In this section, we are going to discuss state management and how we can handle it in the Flutter. We know that in Flutter, everything is a widget. The widget can be classified into two categories, one is a Stateless widget, and another is a Stateful widget. The Stateless widget does not have any internal state. It means once it is built, we cannot change or modify it until they are initialized again. On the other hand, a Stateful widget is dynamic and has a state. It means we can modify it easily throughout its lifecycle without reinitialized it again.

## What is State?

A state is information that can be read when the widget is built and might change or modified over a lifetime of the app. If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.

<h1></h1>

<h3 align="center">Provider & Change Theme using Provider</h3>

<h1></h1>

<div align="center">

<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/c667ef29-20a7-4a22-8ade-8f0cd3d34b24" height="500">
<img src="https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/cbcb4f7a-f5e0-4c32-9273-094b60270474" height="500">

</div>


https://github.com/OmBharsakle/ADVANCE-FLUTTER/assets/149371245/3a166a26-5dd6-4b52-9d68-2e83e4383837


<h1></h1>

<h3 align="center">Quotes Data Solving with Provider</h3>

<h1></h1>

<div align="center">


<img src="https://github.com/user-attachments/assets/a960d48c-167d-42b4-a118-3a2c33da32c9" height="500">
<img src="https://github.com/user-attachments/assets/64075842-32ef-4042-8de7-804e5418d8c3" height="500">

</div>

https://github.com/user-attachments/assets/1ccb41d3-59a7-4934-a360-5f3d39db762c

<h1></h1>

<h3 align="center">1.5 One Time Intro Screen in Flutter </h3>

<h1></h1>

<div align="center">
 
<img src="https://github.com/user-attachments/assets/f408c389-b2d7-4e71-a757-b456a5228fba" height="500">
<img src="https://github.com/user-attachments/assets/6f11265f-f00b-462c-a3c1-413085153b83" height="500">
<img src="https://github.com/user-attachments/assets/2b7542d2-520d-4345-9b70-9d5b193f6688" height="500">

</div>


<h1></h1>

<h3 align="center">1.6 Contact Us Page With Interaction
 </h3>

<h1></h1>

<div align="center">
<img src="https://github.com/user-attachments/assets/0bcaed85-ecad-4ac2-be5a-9cfc60aeb887" height="500">
</div>



https://github.com/user-attachments/assets/2c3d3fce-4c44-4ac4-a05b-c537ce539a55


<h1></h1>

<h3 align="center">Gallery With Biometric Authentication

 </h3>


<h1></h1>

<div align="center">
<img src="https://github.com/user-attachments/assets/a6e4a33d-865e-4217-b4f6-31cdb5482f0d" height="500">
 <img src="https://github.com/user-attachments/assets/698f143d-5f54-4862-87e5-b9f7f25633f2" height="500">
</div>




https://github.com/user-attachments/assets/7d45bf57-097b-4c80-bec3-a592e28def2d




<h1></h1>

<h3 align="center">What is JSON & JSON Parsing ?

 </h3>


<h1></h1>

<div align="center">
<img src="https://github.com/user-attachments/assets/aebc1f14-075d-432f-b188-f567384e268f" height="500">
 <img src="https://github.com/user-attachments/assets/56470a1f-486a-4ba0-ab38-636fd6891b4b" height="500">
</div>

https://github.com/user-attachments/assets/c19ea864-dbb3-4767-892c-b5d515585b08


![image]()
![image]()

<h1></h1>

<h3 align="center">Ecommerce App

 </h3>


<h1></h1>

<div align="center">
<img src="https://github.com/user-attachments/assets/6b1e78ce-34cc-403a-9e2f-1f0e37dfc7b7" height="500">
 <img src="https://github.com/user-attachments/assets/4692e7b4-fe15-4542-9a9b-d857804e32a7" height="500">
</div>




