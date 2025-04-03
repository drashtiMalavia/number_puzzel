import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: numpuzzel(),debugShowCheckedModeBanner: false,));
}

class numpuzzel extends StatefulWidget {
  const numpuzzel({super.key});

  @override
  State<numpuzzel> createState() => _numpuzzelState();
}

class _numpuzzelState extends State<numpuzzel> {
  String btn="",ans1="5",ans2="1",ans3="8",ans4="2",ans5="7",ans6="4",ans7="",ans8="6",ans9="3",tab="",win="";
  List li=[];
  int cnt=0,r=0,i=0;
  Random random=new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Puzzel Game"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 150,
                  width: 420,
                  child: Text("$win", style: TextStyle(fontSize: 50),),
                  color: Colors.pink.shade50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.values[2],
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="1";
                    puzzel("$btn");
                  },
                    child: Text("$ans1", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="2";
                    puzzel("$btn");
                  },
                    child: Text("$ans2", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="3";
                    puzzel("$btn");
                  },
                    child: Text("$ans3", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.values[2],
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="4";
                    puzzel("$btn");
                  },
                    child: Text("$ans4", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="5";
                    puzzel("$btn");
                  },
                    child: Text("$ans5", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="6";
                    puzzel("$btn");
                  },
                    child: Text("$ans6", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.values[2],
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="7";
                    puzzel("$btn");
                  },
                    child: Text("$ans7", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="8";
                    puzzel("$btn");
                  },
                    child: Text("$ans8", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    btn="9";
                    puzzel("$btn");
                  },
                    child: Text("$ans9", style: TextStyle(fontSize: 50),),
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.pink.shade50,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              height: 100,
              width: 400,
              child: ElevatedButton(onPressed: () {
                reset();
              },child: Text("Reset",style: TextStyle(fontSize: 50),),
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.pink.shade50,
                  side: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
            Row(
              children:[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                  },child: Text("Tab:$cnt",style: TextStyle(fontSize: 40),),style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    backgroundColor: Colors.pink.shade50,
                    side: BorderSide(color: Colors.black, width: 1),
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    solve();
                  },child: Text("Slove",style: TextStyle(fontSize: 40),),style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    backgroundColor: Colors.pink.shade50,
                    side: BorderSide(color: Colors.black, width: 1),
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  solve(){
    ans1="1";
    ans2="2";
    ans3="3";
    ans4="4";
    ans5="5";
    ans6="6";
    ans7="7";
    ans8="8";
    ans9="";
    win="Solve By Default";
    setState(() {
    });
  }
  puzzel(String btnno) {
    setState(() {
      win="";
      if(btnno=="1" && (ans2=="" || ans4=="")) {
        cnt++;
        if(ans2==""){
          ans2=ans1;
        }
        else if(ans4==""){
          ans4=ans1;
        }
        ans1="";
      }
      else if(btnno=="2" && (ans1=="" || ans5=="" || ans3=="")){
        cnt++;
        if(ans1==""){
          ans1=ans2;
        }
        else if(ans5==""){
          ans5=ans2;
        }
        else if(ans3==""){
          ans3=ans2;
        }
        ans2="";
      }
      else if(btnno=="3" && (ans2=="" || ans6=="")){
        cnt++;
        if(ans2==""){
          ans2=ans3;
        }
        else if(ans6==""){
          ans6=ans3;
        }
        ans3="";
      }
      else if(btnno=="4" && (ans1=="" || ans5=="" || ans7=="")){
        cnt++;
        if(ans1==""){
          ans1=ans4;
        }
        else if(ans5==""){
          ans5=ans4;
        }
        else if(ans7==""){
          ans7=ans4;
        }
        ans4="";
      }
      else if(btnno=="5" && (ans2=="" || ans4=="" || ans6=="" || ans8=="")){
        cnt++;
        if(ans2==""){
          ans2=ans5;
        }
        else if(ans4==""){
          ans4=ans5;
        }
        else if(ans6==""){
          ans6=ans5;
        }
        else if(ans8==""){
          ans8=ans5;
        }
        ans5="";
      }
      else if(btnno=="6" && (ans3=="" || ans5=="" || ans9=="")){
        cnt++;
        if(ans3==""){
          ans3=ans6;
        }
        else if(ans5==""){
          ans5=ans6;
        }
        else if(ans9==""){
          ans9=ans6;
        }
        ans6="";
      }
      else if(btnno=="7" && (ans4=="" || ans8=="")){
        cnt++;
        if(ans4==""){
          ans4=ans7;
        }
        else if(ans8==""){
          ans8=ans7;
        }
        ans7="";
      }
      else if(btnno=="8" && (ans7=="" || ans5=="" || ans9=="")){
        cnt++;
        if(ans7==""){
          ans7=ans8;
        }
        else if(ans5==""){
          ans5=ans8;
        }
        else if(ans9==""){
          ans9=ans8;
        }
        ans8="";
      }
      else if(btnno=="9" && (ans6=="" || ans8=="")){
        cnt++;
        if(ans6==""){
          ans6=ans9;
        }
        else if(ans8==""){
          ans8=ans9;
        }
        ans9="";
      }
      if(ans1=="1" && ans2=="2" && ans3=="3" && ans4=="4" && ans5=="5" && ans6=="6" && ans7=="7" && ans8=="8" && ans9==""){
        win="Win";
      }
    });
  }
  reset(){
    setState(() {
      li.clear();
      cnt=0;
      win="";
      tab="";
      for(i=1;i<=9;i++){
        do{
          r=random.nextInt(9)+1;
          print(r);
          if(!li.contains(r)){
            li.add(r);
            String st=r.toString();
            if(r==9)
            {
              st="";
            }
            if(i==1){
              ans1=st;
            }
            else if(i==2){
              ans2=st;
            }
            else if(i==3){
              ans3=st;
            }
            else if(i==4){
              ans4=st;
            }
            else if(i==5){
              ans5=st;
            }
            else if(i==6){
              ans6=st;
            }
            else if(i==7){
              ans7=st;
            }
            else if(i==8){
              ans8=st;
            }
            else if(i==9){
              ans9=st;
            }
            break;
          }
        }while(true);
      }
    });
  }
}
