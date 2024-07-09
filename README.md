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

