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



