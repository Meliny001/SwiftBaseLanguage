//: Playground - noun: a place where people can play

import UIKit

let a:Int = 10
//a = 11
var b:Double = 3.14
b = 5.12

// let指针指向的内存空间不可改变 可以改变对象的内部属性
let view:UIView = UIView()
view.backgroundColor = UIColor.redColor()

// 类型推导
let str = "hello world"
print("\(str)")

// 类型转换
let tmp1:Int = 6
var tmp2:Double = 3.14
tmp2 = tmp2 + Double(tmp1)

// 逻辑分支

// if后加的判断语句必须明确的true/false
let case1:Int = 4
if case1>0
{
    print("case 大于零")
}

// guard用于函数中 false时执行else中内容并(return/break/continue/throw掉)

func add(num:Int)
{
    guard num > 3 else
    {
        print("num小于3")
        return
    }
}
add(2)

// 三木运算
let case2:Int = 10 > 0 ? 5 : 6;

// switch 浮点型/字符串/区间均可
let tmp3 = 10.7
switch tmp3
{
case 10.7:
    print("num is 10.7")
default:
    print("num is not 10.7")
}

let str1 = "hello"
switch str1
{
case "hello":
print("str is hello")
case "world":
print("str is world")
default:
    print("others")
}
let tmp4:Int = 3
switch tmp4
{
case 0..<3:
    print("小于3")
case 3...5:
    print(">=3 <=5")
default:
    print("other")
}

// 循环语句 for(三种写法)/while /repeat while
for var i = 10;i > 0 ; i--
{
    print("now i is \(i)")
}
for i in 0 ..< 10
{
    print("i is \(i)")
}
// 效率更高
for _ in 0 ... 10
{
    print("for in...")
}
var i:Int = 0
while i < 10
{
    print("\(i)");
    i++
}
i = 0
repeat{
    print("\(i)");
    i++
}while i < 10

// String 字符串初始化/拼接/格式化拼接/转换_NSString/截取
let tmpStr:String = String()
let tmpStr1:String = "welcome"
var tmpStr2 = " to china"
tmpStr2 = tmpStr1 + tmpStr2

// 遍历
for c in tmpStr2.characters
{
    print("\(c)")
}

// 格式化拼接
let tmpS = String(format: "this is %02d", arguments: [3])
// 截取
let targetStr = (tmpStr2 as NSString).substringFromIndex(8)

// Array 数组的定义/增删改取/遍历/合并
let arr1:Array = [String]()
var arr2:Array = ["one","two","three"]
let tmpArr:Array = ["one",1,2.9,3]

arr2.append("four")
arr2.removeAtIndex(1)
arr2[1] = "haha"

for i in 0 ..< arr2.count
{
    print("\(arr2[i])")
}

for name in arr2
{
    print("\(name)")
}

// 合并 必须类型一致
let arr3:Array = ["add"]
arr2 = arr2 + arr3

// 字典 的定义/增删改取/遍历/合并
// 定义
let tmpDict:Dictionary = ["key":"value","num1":11,"num2":10.9]
var mutaleDict:Dictionary = [String:NSObject]()
mutaleDict["name"] = "xiaoming"
mutaleDict["score"] = 98.8
mutaleDict["age"] = 19
mutaleDict["height"] = 178

// 删除
mutaleDict.removeValueForKey("height")
mutaleDict

// 修改
mutaleDict["score"] = 99.0

// 遍历
for value in mutaleDict.values
{
    print("\(value)")
}

for key in mutaleDict.keys
{
    print("\(key)")
}

for (key,value) in mutaleDict
{
    print("key:\(key) and value:\(value))")
}

// 合并
for (key,value) in tmpDict
{
    mutaleDict[key] = value
}
mutaleDict

// 元组(常用于方法返回值)

let turple = (name:"name",score:98,height:178,age:19)
turple.name
turple.age

// 可选类型
// swift 任何对象均需有明确的初始值

let tempStr:Optional<String> = nil
var tempStr1:String? = nil

tempStr1 = "name"
print(tempStr1)
// 强制解包(如果对象为nil会crash)
if tempStr1 != nil
{
    print(tempStr1!)
}

// 推荐方式(可选绑定)
// 相当于1:判断是否为空,空时直接跳过{} 2.非空,赋值给name 执行{}
if let name = tempStr1
{
    print(name)
}
if let tempStr1 = tempStr1
{
    print(tempStr1)
}

// 应用场景
let url:NSURL? = NSURL(string: "www.magic.com")
let request:NSURLRequest
if let url = url
{
    request = NSURLRequest(URL: url)
}


// 函数使用
//func 函数名(参数列表)->返回值类型
//{
//}

// 无参无返回值
func showMessage()
{
    print("show")
}
func showMessage1()->Void
{
    print("show")
}

// 无参有返回值
func add()->String
{
    return "add"
}

// 有参无返回值
func show(str:String)
{
    print("show \(str)")
}
show("me the message")

// 有参有返回值
func addOneNum(num:Int) -> Int
{
    return num + 1
}
let addResult:Int = addOneNum(4)

// 函数的使用注意

// 内部参数:默认都是内部参数
// 外部参数:从第二个开始 即是内部 也为外部参数

func addNum(num1:Int , num2:Int)->Int
{
    return num1 + num2;
}
addNum(3, num2: 5)

func addOtherNum(num1 num1:Int,num2:Int)->Int
{
    return num1 + num2
}
addOtherNum(num1: 4, num2: 5)


// 默认参数
func combineString(str str:String = "hello",otherStr:String)->String
{
    print("\(str + otherStr)")
    return str + otherStr
}
combineString(str: "load...", otherStr: "world")

// 可变参数
func addNums(num:Int...)->Int
{
    var result:Int = 0
    for n in num
    {
        result += n
    }
    print("\(result)")
    return result
}

// 指针类型
var m = 10
var n = 5
func swapNums(inout m m:Int,inout n:Int)
{
    let tempNum = m
    m = n
    n = tempNum
    
    print("m:\(m) n:\(n)")
}
swapNums(m: &m, n: &n)

// 函数嵌套
func waiFunc()
{
    func neiFunc()
    {
        print("内部函数")
    }
    print("外部函数")
    neiFunc()
}

waiFunc()


// 类的定义(KVC)

// 创建类
class Person: NSObject {
    var name:String?
    var age:Int = 0
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
}

// 实例化及KVC赋值
let p:Person = Person()
p.setValuesForKeysWithDictionary(["name":"xiaoming","age":19])

class Student: NSObject {
    // 存储属性
    var numerID:String?
    var name:String?
    var englishScore:Int = 0
    var techScore:Int = 0
    // 计算属性
    var averageScore:Double {
        return Double((englishScore + techScore)) * 0.5
    }
    
    // 类属性
    static var kechengCount:Int = 0
}

Student.kechengCount = 2

let xiaoM = Student()
xiaoM.numerID = "0001"
xiaoM.name = "小明"
xiaoM.englishScore = 98
xiaoM.techScore = 99


// 构造函数(属性赋值/字典赋值/KVC)

class Animal: NSObject {
    var name:String?
    var age:Int = 0
    
    override init() {
        // super.init() 系统默认调用且在该函数栈末尾调用
    }
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    /*
    init(dict:[String:NSObject]) {
        // 'NSObject?' to type 'String?'
        let tempName = dict["name"]
        self.name = tempName as? String
        
        if let age = dict["age"] as? Int
        {
            self.age = age
        }
    }
    */
    init(dict:[String:NSObject]) {
        super.init()
        // 确定对象存在
        setValuesForKeysWithDictionary(dict)
    }
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
    }
}

let dog = Animal(name: "dog", age: 3)
let cat = Animal(dict: ["name":"cat"])
let snak = Animal(dict: ["name":"snak","size":100])

// 属性监听
class Fruit: NSObject {
    var size : Double = 0
    {
        willSet{
            print(size)
            print(newValue)
        }
        // 常用didSet
        didSet{
            print(size)
            print(oldValue)
            print("newValue:\(size) oldValue:\(oldValue)")
        }
    }
}

let apple = Fruit()
apple.size = 19.0
apple.size = 25.0
