//: Playground - noun: a place where people can play
//使用playground 的好处是可以直接的看到代码的运行结果,可视化非常方便,适合入门练习使用.
//学习链接:https://www.cnswift.org/the-basics

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



/*
 * 五. 注释
 */

//注释方式和oc基本一致,多了一个 多行注释可以嵌套多行注释 :
/* xxx
        /*
            xxx
        */
 xxxx
*/


/*
 * 六. 整形
 */
//Swift 提供了 8，16，32 和 64 位编码的有符号和无符号整数
//获取8位无符号整数类型的 最小 最大 值.
let minValue = UInt8.min
let maxValue = UInt8.max

//Int ，它拥有与当前平台的原生字相同的长度。在32位平台上， Int 的长度和 Int32 相同。在64位平台上， Int 的长度和 Int64 相同
//UInt 在32位平台上， UInt 长度和 UInt32 长度相同。在64位平台上， UInt 长度和 UInt64 长度相同





/*
 *七. 浮点型
 */
//Double代表 64 位的浮点数。Float 代表 32 位的浮点数。
//Double 有至少 15 位数字的精度，而 Float 的精度只有 6 位。具体使用哪种浮点类型取决于你代码需要处理的值范围。在两种类型都可以的情况下，推荐使用 Double 类型。
let number2 = 3.14




/*
 *八. 类型安全和类型推断
 */
//编译代码的时候会进行类型检查，任何不匹配的类型都会被标记为错误。这会帮助你在开发阶段更早的发现并修复错误

//下面的常量会推断为Int
let meaningOfLife = 42

//下面的常量会推断为Double(优先于float)
let pi = 3.14

//类型:Int + Double -> Double
let anotherPi = 3 + 0.14159


/*
 *九. 数值字面量 : 十进制,二进制(0b) ,八进制(0o),十六进制(0x)
 */
//以下常量的值都是17
let num1 = 17
let num2 = 0b1001
let num3 = 0o21
let num4 = 0x11;


/*
 *十. 指数
 */
//注意十进制用 e,  十六进制用 p
//十进制数与 exp  的指数，结果就等于基数乘以 10exp
let n = 1.25e2      // 相当于 1.25 * 10的平方
let n1 = 1.25e-2    // 相当于 1.25 * 10 -2 次方

//十六进制数与 exp 指数，结果就等于基数乘以2exp
let nn = 0xFp2      //相当于 15 * 2的平方
let nn2 = 0xFp-2    //相当于 15 * 2的-2次方

//数值型字面量也可以增加额外的格式使代码更加易读
let n3 = 1_000_000 //和 let n3 = 1000000 没啥区别




/*
 *十一. 数值类型转换
 */

/* 整形转换 */
//Uint8 范围 0 ~ 255   ,   Int8: - 128 ~ 127

//所以下面这两行代码是错的(都不能存储对应的值)
//let cannotBeNegative: UInt8 = -1
//let tooBig: Int8 = Int8.max + 1

//Uint16 & Uint8 类型不能直接相加,需要类型转换
let twoThound :UInt16 = 2000
let one :UInt8 = 1
let twoThoundAndOne = twoThound + UInt16(one)
//oc中的强转是把类型括起来,swift是把要转的值括起来,都差不多,转成相同类型就相加了
//类型转化的原理:
/*
 SomeType(ofInitialValue)  是调用 Swift 类型初始化器并传入一个初始值的默认方法。在语言的内部， UInt16 有一个初始化器，可以接受一个 UInt8 类型的值，所以这个初始化器可以用现有的 UInt8来创建一个新的 UInt16 。
 这里需要注意的是并不能传入任意类型的值，只能传入 UInt16 内部有对应初始化器的值。
 不过你可以扩展现有的类型来让它可以接收其他类型的值（包括自定义类型）
 */


/*整数和浮点数转换*/
//整数和浮点数类型的转换必须显式地指定类型：
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi3 = Double(three) + pointOneFourOneFiveNine

// three 被推断为Int pointOneFourOneFiveNine被推断为Double
//在这里，常量 three 的值被用来创建一个类型为 Double 的新的值，所以加号两边的值的类型是相同的。没有这个转换，加法就无法进行。
//在用浮点数初始化一个新的整数类型的时候，数值会被截断。也就是说 4.75 会变成 4 ， -3.9 会变为 -3 。

//浮点转换为整数也必须显式地指定类型。一个整数类型可以用一个 Double 或者 Float 值初始化。


/*
 *十二. 类型别名
 */
//给UInt16 起别名为:myInt 用myInt定义常量

typealias myInt = UInt16
let num5 : myInt = myInt.min;


/*
 *Bool类型
 */
//Swift为布尔量提供了两个常量值， true 和 false
let orangesAreOrange = true
let turnipsAreDelicious = false

//当你处理条件语句的时候例如 if 语句时，布尔值就会变得非常有用
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
//Swift 的类型安全机制会阻止你用一个非布尔量的值替换掉 Bool 。下面的栗子中报告了一个发生在编译时的错误
//let i = 1
//if i {
//    // this example will not compile, and will report an error
//}

//正确写法
let i = 1
if i == 1 {
    // this example will compile successfully
}
//这里 i == 1 的比较结果是一个 Bool 类型，所以第二个栗子可以通过类型检查


