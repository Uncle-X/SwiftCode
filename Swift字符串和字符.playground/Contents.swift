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



















