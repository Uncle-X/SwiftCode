//: Playground - noun: a place where people can play

import UIKit

/*字符和字符串*/
//Swift 的 String类型桥接到了基础库中的 NSString类。Foundation 同时也扩展了所有 NSString 定义的方法给 String 。也就是说，如果你导入 Foundation ，就可以在 String 中访问所有的 NSString  方法，无需转换格式。

//初始化
let astr = "hello baby"

//多行字符串 格式 : """ xxx """
//注意换行
let multiStr = """
today
I want to go home
"""

//转义字符 \
let threeDoubleQuotes = """
Escaping the first quote
\"""Escaping all three quotes \"\"\"
"""


//也就是说双引号不会开始或结束带有换行
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

//要让多行字符串字面量开始或结束带有换行，写一个空行作为第一行或者是最后一行
"""

This string starts with a line feed.
It also ends with a line feed.

"""



func generateQuotation() -> String {
    let quotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin,
        please your Majesty?" he asked.
        
        "Begin at the beginning," the King said gravely, "and go on
        till you come to the end; then stop."
        """
    return quotation
}
let quotation = generateQuotation();
print("\(quotation)")


//初始化一个空字符串
var emptyStr = ""
var emptyStr2 = String()
//两个是相同的


//通过检查布尔量 isEmpty属性来确认一个 String值是否为空：

if emptyStr.isEmpty {
    print("emptyStr 是空的")
}



//可变字符串和不可变字符串
var variableString = "Horse"
variableString += " and carriage"

//let constantString = "Highlander"
//constantString += " and another Highlander"

//let 创建的字符串不可修改,var创建的字符串可以修改
//String值在传递给方法或者函数的时候会被复制过去，还有赋值给常量或者变量的时候也是一样。每一次赋值和传递，现存的 String值都会被复制一次，传递走的是拷贝而不是原本
//Swift 编译器优化了字符串使用的资源，实际上拷贝只会在确实需要的时候才进行



//字符串的遍历
//你可以通过 for-in循环遍历 String 中的每一个独立的 Character值
for c in "hello"{
    print("\(c)")
}


//你可以通过提供 Character类型标注来从单个字符的字符串字面量创建一个独立的 Character常量或者变量
let zifu: Character = "?"

//通过Character值的字符串来初始化字符串
let catCharStr :[Character] = ["C", "a", "t", "!", "?"]
let catStr = String(catCharStr); //character 类型字符串 转swift字符串
print("\(catStr)")


//字符串拼接
let string1 = "hello"
let string2 = "world"
let string3 = string1 + string2
print("\(string3)")



//在已经存在的 String值 末尾追加 一个 String  +=
 var string4 = "i am heer"
string4 += string1
print("\(string4)")


//append()方法来可以给一个 String变量的末尾追加 Character值
let string6: Character = "!"
string4.append(string6)
print("\(string4)")

//character 相当于 oc 中 的 char 类型,只能包含一个字符

//字符串插值
let number1 = 3
let string7 = "I have \(number1) apples and \((number1)*2) oranges " //print 输出的时候常用



//Unicode 标量 (了解)
/*
 1.Swift 的原生 String 类型建立于 Unicode 标量值之上
 2.一个 Unicode 标量是一个为字符或者修饰符创建的独一无二的21位数字
 3.Unicode 标量码位位于 U+0000到 U+D7FF或者 U+E000到 U+10FFFF之间。Unicode 标量码位不包括从 U+D800到 U+DFFF的16位码元码位
 4.注意不是所有的 21 位 Unicode 标量都指定了字符——有些标量是为将来所保留的
 5.那些有了字符的标量通常来说也会有个名字，比如 LATIN SMALL LETTER A 和 FRONT-FACING BABY CHICK
 */



//特殊字符,转义字符
/*
 转义特殊字符 \0 (空字符)， \\ (反斜杠)， \t (水平制表符)， \n (换行符)， \r(回车符)， \" (双引号) 以及 \' (单引号)；
 */
let testWorld = " \"内嵌双引号转义字符使用\" "
//任意的 Unicode 标量，写作 \u{n}，里边的 n是一个 1-8 个与合法 Unicode 码位相等的16进制数字
let dollarSign = "\u{24}" // $, Unicode scalar U+0024
let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // ?, Unicode scalar U+1F496



//扩展字符集群(略过)









