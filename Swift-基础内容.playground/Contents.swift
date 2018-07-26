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
//let `Int` = "Unicode"

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
 *十三.Bool类型
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
//Swift 的类型安全机制会阻止你用一个非布尔量的值替换掉 Bool 。oc 中的1为真0为假在这里不适用
//let i = 1
//if i {
//    // this example will not compile, and will report an error
//}

//正确写法，这里 i == 1 的比较结果是一个 Bool 类型，所以第二个栗子可以通过类型检查
let i = 1
if i == 1 {
    // this example will compile successfully
}

/*
 *十四. 元组
 */
//元组把多个值合并成单一的复合型的值。元组内的值可以是任何类型，而且可以不必是同一类型
let http404Error = (404,"not found")//--->类型就是(Int,string)

//任何类型的排列都可以被用来创建一个元组，他可以包含任意多的类型
let some = (4,"hehe",true)//--->类型是(Int,string,Bool)

//两个数据都要的情况
let (statusCode,statusMessage) = http404Error;
print("错误码是\(statusCode),错误信息是\(statusMessage)")

//只要code的情况,其中一个用不到,就用_代替.
let (code,_) = http404Error
print("错误码是\(code)")

//-->可以想到,元组作为函数返回值时，非常有用


/*
 *十五. 可选项
 */

//可选项用来处理可能会出现缺失值得情况,可以选项的意思是,可能有值,可能没值.
//oc 中,对象类型,没有值得情况下回返回一个nil,基本数据类型,比如结构体,枚举等,会返回一个NotFound
//swift 中,任何类型没有值得情况,都可以返回nil,不仅限于对象类型
//在oc中,nil是指向一个不存在的对象的指针,在swift中,nil不是指针,他是一种类型,一种代表值缺失的类型(只要为空,就是nil),不仅仅是对象类型,所有类型值为空,都可以是nil

//字符串转数字,可能为空,不是所有的字符串都能转成数字的,所以下面这样写是会报错的.

let possibleNumber:String = "123"
let coveredNumber:Int? = Int(possibleNumber)


//不能给一个非可变类型的变量赋值为nil,如果一个变量可能有值,可能没值,就声明为可选项
var serverCode :Int? = 404
serverCode = nil


/*
 *十六. if 语句,以及强制展开
 */

//接着上面的变量coveredNumber 来
if coveredNumber != nil {
    print("字符串转数字成功")
}

//如果,明确知道会转成功,而且有值,就可以强制解析
if coveredNumber != nil {
    print("转换成功后的数字是\(coveredNumber!)")
}
//更多关于if的用法,后面控制流学习的时候再详细讨论




/*
 *十七. 可选项绑定
 */
//可以使用可选项绑定来判断可选项是否包含值，如果包含就把值赋给一个临时的常量或者变量

if let numberA = Int(possibleNumber) {
    print("转成的数字是\(numberA)")
}else{
    print("没转成功")
}

//如果 Int(possibleNumber) 转换成功,会直接被赋值给numberA进行初始化,第一个判断分支中就可以使用.而且不用 ! 来强制展开(解析)

//同一个 if 语句中包含多可选项绑定，用逗号分隔即可。如果任一可选绑定结果是 nil 或者布尔值为 false ，那么整个 if 判断会被看作 false
if let aa = Int("12"), let bb = Int("14"), let cc = Int("16"), aa < bb && bb < cc {
    print("条件成立")
}

//等价于
if let aa = Int("12") {
    if let bb = Int("14") {
        if let cc = Int("16"){
            if aa < bb && bb < cc {
                print("条件成立")
            }
        }
    }
}


/*
 *十八. 可选项的隐式展开
 */
//所谓的可选项的隐式展开,不必像普通的可选项那样,获取值得时候还要在后面添加一个 ! 来强制解析,而是在声明的时候,就添加 ! ,用的时候直接用就行了.
//隐式展开,肯定是在,声明一个变量的时候,就已经确定这个变量肯定有值,才会用
//如果一个定义了隐式展开的变量,有肯能为nil,那么这个变量就不适合用隐式展开,建议定义成普通的可选项
//总之:不要在一个变量可能为nil的情况下使用隐式展开

//普通的可选项
let possibleStr: String? = "heheda";
let forcedStr: String = possibleStr! //上面是普通可选项,在这里强制解析

let possibleStr2: String! = "heheda"
let forcedStr2: String = possibleStr2  //这里不用强制解析,上面已经定义了隐式展开

//隐式展开可选项当做在每次访问它的时候被给予了自动进行展开的权限




/*
 *十九. 错误处理
 */

//一般用于函数
//一个函数如果想抛出错误,就使用throws 关键字,加在函数的后面

func doSomeThing() throws {
    
}

//Swift 会自动将错误传递到它们的生效范围之外，直到它们被 catch 分句处理
do{
    try doSomeThing()
    //没有错误之执行这里

}catch{
    //有错误之执行这里
}


//实例二 do 语句创建了一个新的容器范围，可以让错误被传递到到不止一个的 catch 分句里。

func makeASandwich() throws {
    // ...
}


//do {
//    try makeASandwich()
//    eatASandwich()
//} catch Error.OutOfCleanDishes {
//    washDishes()
//} catch Error.MissingIngredients(let ingredients) {
//    buyGroceries(ingredients)
//}


/*
 *二十. 断言和先决条件
 */
//(一.) 断言
/*
 *使用全局函数 assert(_:_:)  函数来写断言,另外，断言还允许你附加一条调试的信息
 *断言为真,函数继续执行,断言为假的,程序停止,
 */

let lilisAge = -3
assert(lilisAge > 0,"A person's age cannot be less than zero")

//当然,后面的错误信息也可以不写
assert(lilisAge > 0)

if lilisAge > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if lilisAge > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}
//断言和先决条件的不同之处在于他们什么时候做检查：断言只在 debug 构建的时候检查，但先决条件则在 debug 和生产构建中生效。在生产构建中，断言中的条件不会被计算



/*
 *二十一. 强制先决条件 precondition
 */

//如果条件不成立,false信息就会显示出来
//使用先决条件来检测下标没有越界，或者检测函数是否收到了一个合法的值。

let index = 3
precondition(index > 5,"Index must be greater than five")


//Swift 提供了一系列好用的断言函数。assert 和 assertionFailure 函数仅在优化未开启时有效。这对于检查那些耗性能的条件是很有用的，但通常情况下应尽量避免使用。precondition 和 preconditionFailure 函数在优化开启时也有效



