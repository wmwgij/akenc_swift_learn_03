//
//  practise_1.swift
//  akenc_swift_learn_03
//
//  Created by kenshino on 15/10/12.
//  Copyright © 2015年 akenc. All rights reserved.
//

import Foundation


//1.函数声明 及类型
func add(a:Int, b:Int) ->Int{
    return a+b;
}

//2.调用方式依旧是OBJ-C 默认省掉第一个参数名的方式
// call  add(1,b:2);


//3.多返回值
func scan(scores:[Int]) ->(min:Int,max:Int,avg:Int){
    var max = 0;
    var min = 0;
    var avg = 0;
    return (min,max,avg);
}