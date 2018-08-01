//: Playground - noun: a place where people can play

import UIKit

/*
 swift 的三种集合类型
 1.数组 arry 有序
 2.合集 set  无序
 3.字典 dictionary 无序键值对
 ** Swift 的数组、合集和字典是以泛型集合实现的
 */
//一. 集合的可变性
//let 创建的集合不可变 var创建的集合可变 ,在集合不需要改变的情况下创建不可变集合是个不错的选择,性能较好(swift 编译器优化)





//二.数组
//Swift 的 Array类型被桥接到了基础框架的 NSArray类上。

//1 初始化一个空数组
var arry1 = [Int]()

//拼接一个元素
arry1.append(3)

//清空数组
arry1 = [] //虽然清空了,但是依然是Int类型
