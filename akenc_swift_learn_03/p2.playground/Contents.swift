//: Playground - noun: a place where people can play

import Cocoa

//数据类型
//SWIFT 是类型安全的
//概述：数据类型有Int,Float,Double,String,Bool,元祖类型（自定义）
/*
Int、Float、Double、Bool、Character、String(首字母都大写)
Array、Dictionary、元组类型(Tuple)、可选类型(Optional)
*/

/*
1.注释方式

/*
注释嵌套
*/

*/


//2.整数(UInt 无符号； Int 有符号)

let intMax = UInt.max;
let intMin = UInt.min;

/*
32 位机器上 UInt and UInt32 is the same bit;
64 bit machine ,UInt and UInt64 is the same bit;


You can assign bit-size to a Integer variable;64-bit Integer can be used on 64-bit machine;
*/

var i1:Int = 3;
var i2:Int8 = 3;
var i3:Int16 = 3;
var i4:Int32 = 3;
var i5:Int64 = 3;



//3.浮点型 double and float
// double 64 bit
// float 32 bit

//3.数值量表达式
/*
1. 10进制不用带前缀   (a decimal system number needs no prefix)
2. 2进制前缀用0b     (a binary system number needs beginning with '0b')
3. 8进制前缀0o      (a octonary system number needs beginning with '0o')
4. 16进制用0x      (a hexadecimal system number needs beginning with '0x')
*/

let decimalNum = 10;
let binaryNum = 0b01100001;
let octonaryNum = 0o0765;
let hexadecimalNumb = 0xff;


//4.Bool布尔类型

//终于不是YES OR NO 了，和JAVA/C一样了
let b1 = true;
let b2 = false;
let b3 = Bool(2);//not 0 is true;
let b4 = Bool(0);// 0 is false;
let b5 = Bool(true);
let b6 = Bool(false);

//5.元祖类型(mooncake)
let tup1 = (age:1,name:"abc",height:1,width:2);//带元素名称
let tup2 = (1,"abc",1,2);//省略元素名称
let tup3:(String,Int) = ("abc",2);
var (t1,t2) = tup3;
var (_,t3) = tup3;//t3不能与t2一样，看来括号并没有隔离作用域

//6.可选值
var possibleNumber = "123";
var convertNumber:Int? = Int(possibleNumber);//转换可能失败. (在类型后面加？表示可选)

//获取可选类型的值，需要在后面加上！ 
if convertNumber != nil{
    print("convertedNumber的值为\(convertNumber!)")
}

//OC中的nil指向一个不存在的对象， 而Swift中nil不是指针，而是一个缺省值
//possibleNumber = nil   //普通的变量是不能赋值为nil
//convertedNumber = nil    //可选类型能赋值为nil， 当没有值时，自动赋值为nil
if let my:Int? = convertNumber {
    print("这是可选绑定！\(my)")
}

//7.数据的输出格式 && 类型转换 && 类型别名
//可以在数字中增加额外的0或_, 增强可读写
let d1 = 000123
let d2 = 00123.0012300

let d3 = 1_2_3
let d4 = 1__2____3;
//let d4 = _123   //错误

//类型转换
let intA:Int = 8;
let dA:Double = 0.01;
let p2_result = Double(intA)+dA;

//类型别名就相当于C中的typedef

//8.类型别名 typealias
typealias XNInt = Int
let test:XNInt = 10

//9.范围运算符..<   ...
for index1 in 1...10{ }  //表示闭包[1 10]
for index2 in 1..<10{ }  //表示半闭合[1 10)

//10.3.2 溢出运算符。（新增加的，可用来处理数据溢出的情况）&+溢出加 &-溢出减 &*溢出乘 &/溢出除 &%溢出余
let f1 = UInt.max
//let f2 = x + 1  //这样写会上溢
let f2 = f1 &+ 1   //溢出加. 值为0. 变为溢出后的最小值

let g1 = 10
//let g2 = g1 / 0  //会报错
//let g2 = g1 &/ 0   //值为0
//let g3 = g1 % 0  //会报错
//let g3 = g1 &% 0   //值为0

//11.3.3 一些注意的地方 非0即真这种C语言的东西遭淘汰！赋值更加灵活，且赋值没有返回值。
let (x,y) = (1,2)    //整体赋值
//if(x = y){ }    //这样写是错误的. 能防止将==写成=
//if(10){ }     //这样写也是错误的. 非0即真已经不适用.
if(true){ }
