//
//  p2.swift
//  akenc_swift_learn_03
//
//  Created by kenshino on 15/10/12.
//  Copyright © 2015年 akenc. All rights reserved.
//

import Foundation
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






//类型转换
let intA:Int = 8;
let dA:Double = 0.01;
let p2_result = Double(intA)+dA;