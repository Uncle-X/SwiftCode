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
//字符串字符统计 - count 属性
let testStr = "ce shi yi xia zifu chuan de changdu !"
print(" 字符串的长度是 : \(testStr.count)")

//字符串索引
//每一个 String值都有相关的索引类型， String.Index
//Swift 的字符串不能通过整数值索引
//startIndex属性来访问 String中第一个 Character的位置
//endIndex属性就是 String中 最后一个字符后 的位置 ---> endIndex属性并不是字符串下标脚本的合法实际参数
//index(before:) 和 index(after:) 方法来访问给定索引的前后
//要访问给定索引更远的索引，你可以使用 index(_:offsetBy:)

let indexTestStr: String = "hello world !"
indexTestStr[indexTestStr.startIndex] //访问第一个字符
indexTestStr[indexTestStr.index(before: indexTestStr.endIndex)] //访问最后一个字符
indexTestStr[indexTestStr.index(after: indexTestStr.startIndex)] //访问第二个字符
indexTestStr[indexTestStr.index(indexTestStr.startIndex, offsetBy: 7)] //访问第7个字符
/*尝试访问的 Character如果索引位置在字符串范围之外，就会触发运行时错误。
 greeting[greeting.endIndex] // error
 greeting.index(after: endIndex) // error
*/


//使用 indices属性来访问字符串中每个字符的索引
for index in indexTestStr.indices{
    print(indexTestStr[index])
}

//你可以在任何遵循了 Indexable 协议的类型中使用 startIndex 和 endIndex 属性以及 index(before:) ， index(after:) 和 index(_:offsetBy:) 方法。这包括这里使用的 String ，还有集合类型比如 Array ， Dictionary 和 Set 。






//插入和删除

var testInsertStr = "hello"
testInsertStr.insert("!", at: testInsertStr.endIndex) //末尾插入一个叹号

//插入字符串
testInsertStr.insert(contentsOf: " hehe", at: testInsertStr.index(before: testInsertStr.endIndex))

//移除字符
testInsertStr.remove(at: testInsertStr.index(before: testInsertStr.endIndex)) //移除末尾字符

// 移除一定范围的字符串
let range = testInsertStr.index(testInsertStr.endIndex, offsetBy: -4)..<testInsertStr.endIndex//(从末尾开始,向前推4个字符)
testInsertStr.removeSubrange(range)

//任何遵循了 RangeReplaceableIndexable 协议的类型中使用 insert(_:at:) ， insert(contentsOf:at:) ， remove(at:) 方法。这包括了这里使用的 String ，同样还有集合类型比如 Array ， Dictionary 和 Set





//子字符串 :subString
//从一段字符串中截取出来的 字符串
//优化:子字符串可以重用一部分用来保存原字符串的内存，或者是用来保存其他子字符串的内存。但是如果两个字符串使用相同的内存，他们就是等价的
//这个性能优化意味着在你修改字符串或者子字符串之前都不需要花费拷贝内存的代价
//只要这个字符串有子字符串在使用中，那么这个字符串就必须一直保存在内存里
//在字符串上执行动作的话你应该使用子字符串执行短期处理。当你想要把结果保存得长久一点时，你需要把子字符串转换为 String 实例

let greating = "heello, world"
let index = greating.index(of: ",") ?? greating.endIndex //保证index有值
let begining = greating[..<index] //截取出子字符串,重用的还是原字符串的内存.
let newString = String(begining) //通过截取出来的subString 初始化一个新的string,就有了自己的内存空间



//字符串的比较
let quotation1 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation1 == sameQuotation {
    print("These two strings are considered equal")
}

//两个 String值（或者两个 Character值）如果它们的扩展字形集群是规范化相等，则被认为是相等的。如果扩展字形集群拥有相同的语言意义和外形，我们就说它规范化相等，就算它们实际上是由不同的 Unicode 标量组合而成。

let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// prints "These two strings are considered equal"
//字符串和字符的比较在 Swift 中并不区分区域设置。




//前缀和后缀相等性
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]


//统计包含前缀的数量
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// Prints "There are 5 scenes in Act 1"


//统计包含某段字符串的数量
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// Prints "6 mansion scenes; 2 cell scenes"


//逐个字符遍历字符串
let dogString = "dogString"

//utf8 表示法
for codeUint in dogString.utf8 {
    print("\(codeUint)")
}

//utf16 表示法
for codeUnit in dogString.utf16{
    print("\(codeUnit)")
}

//uinicode标量表示法
for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
