//: Playground - noun: a place where people can play

import UIKit

/*一. 赋值运算符 */
let b = 10
var a = 5
a = b  //把把的值赋值给a


//元组赋值
let (x, y) = (1, 2)
print("x = \(x),y= \(y)")
//会对应的拆分赋值,x= 1,y= 2 ;

//错误用法
//if x = y {
//    // = 号不能判断两个变量相等,本身不返回任何值,这样写是错误的.赋值符号 (=) 被意外地用于等于符号 (==) 的实际意图上
//}


//+ - * / 加减乘除
1 + 2
5 - 3
2 * 3
4 / 2
//Swift 算术运算符默认不允许值溢出。你可以选择使用 Swift 的溢出操作符（比如  a &+ b  ）来行使溢出行为(溢出运算符,在高级运算符中详解)


//加法支出字符串的拼接
"hello," + "world"


// % 余数运算符
9 % 4
-9 % 4
-9 % -4
9 % -4

//当 b为负数时它的正负号被忽略掉了。这意味着 a % b  与 a % -b  能够获得相同的答案。

// - 号运算符
let three = 3
let minusThree = -three
let plusThree = +minusThree

//- 可以把一个正数变成负数,+ 返回操作值,不对值进行任何修改.
// - 直接在要进行操作的值前边放置，不加任何空格



//组合运算符
var aa = 2
a += 3



//比较运算符
1 == 1
2 != 3
2 > 1
1 < 2
2 >= 1
1 < 2

//swif 还有两个等价运算符 === !== 判断连个对象的引用是否相同
//以上这些比较运算符,都会返回一个bool类型

let astr = "hello"
if astr == "hello" {
    print("是相同的")
}else{
    print("是不同的")
}

//元组的比较
//条件:元组的元素的个数必须相同,而且对应的元素是可比较的
//bool类型的元素不能比较

(1, "zebra") < (2, "apple")   // true because 1 is less than 2
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

//Swift 标准库包含的元组比较运算符仅支持小于 七个元素 的元组。要比较拥有七个或者更多元素的元组，你必须自己实现比较运算符。


/* 三目运算符 */
//如果条件为真,返回❓后的值,为假,返回 : 后的值
let header = true
let contentH = 40
let height = contentH + (header ? 20 : 50)

//优势:简介,劣势:可读性差,尤其多个三目运算一起使用的时候,尽量避免多个三目运算同时使用


/*空合运算符 ??  -- (合并空值运算符)*/
//释义: a ?? b     意思是:a,必须是可选类型,如果 a 不为nil,返回a ,如果a 为nil,则返回b
// a != nil ? a! : b

//比如设置颜色 默认颜色是红色,获取的颜色如果有值,就用获取的,没有值,就用默认的
let defauleColor = "red"
var getColor :String?
var colorToUser = getColor ?? defauleColor




/* 区间运算符 */
// 1. 闭区间运算符 a...b (从a - b ,包含 a , b ,a 不能大于b)

for item  in 1...5 {
    print("打印第 \(item) 次")
}


//2.半开区间运算符 a ..< b
//多用于数组遍历
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

//单侧区间
//遍历部分数组
for name in names[2...] {
    print(name)
}
//从index = 2 遍历到最后

for name in names[...2] {
    print(name)
}
//从0 遍历到 index = 2

for name in names[..<2] {
    print(name)
}
//从0 遍历到 index = 2 的前一位

let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)


/**/
//逻辑运算符  && || !

// && 与
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("同时为真则真")
} else {
    print("一假即假")
}

// || 或
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("一真即真")
} else {
    print("同时为假则假")
}

// ! 非
let allowedEntry = false
if !allowedEntry {
    print("取反,真变假,假变真")
}

//Swift 语言中逻辑运算符 && 和 || 是左相关的，这意味着多个逻辑运算符组合的表达式会首先计算最左边的子表达式




//括号 () 增加可读性
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//结果不影响,但是可读性提高了.知道前面的()中的是一体的.



