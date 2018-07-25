//: Playground - noun: a place where people can play
//使用playground 的好处是可以直接的看到代码的运行结果,可视化非常方便,适合入门练习使用.

import UIKit

/*
 * 一. 常量和变量
 */

//定义一个常量(声明一个常量并赋值)
let number = 5
//定义一个变量(声明一个变量并赋值)
var str = "Hello, playground"
str = "大肥猫"

//可以在一行中声明一个或者多个常量或者变量
let num = 10,age = 20
var x = 0.0, y = 0.0, z = 0.0



/*
 * 二. 类型标注
 */
//声明了一个变量,但是没有复制,可以在变量的后面添加:跟上类型,标注这个变量是这种类型
//这句代码的意思就是,声明了一个变量,它的类型是 NSString类型
//像上面的变量,直接就赋值的时候,不用添加类型标注也是可以的,swift的'类型安全&类型推断'可以根据赋值,推断出变量的类型.
var colledge : NSString

//同时标注多个变量
var red ,green ,yellow : Double




/*
 * 三. 命名常量和变量
 */
//常量和变量的名字几乎可以使用任何字符，甚至包括 Unicode 字符：
//常量和变量的名字不能包含空白字符、数学符号、箭头、保留的（或者无效的）Unicode 码位、连线和制表符。也不能以数字开头
let π = 3.1415926
let 🙄 = "呵呵"
let 你妹 = "你妹"
//let Int = 44
//尽量不要使用关键字作为常量或者变量名(一定要用可以用反引号包裹`xxx`--(键盘左上角~的键))
let `Int` = "Unicode"

//常量不可改变
let laguageName = "lili"

//修改常量值会报错:Cannot assign to value: 'laguageName' is a 'let' constant
//laguageName = "lucy"






/*
 *四. 常量和变量的输出 --打印函数
 */

//常量和变量用\(xx)形式括起来
var name2 = "lili"
let age2 = 18
print("my name is \(name2),my age is \(age2)")


















