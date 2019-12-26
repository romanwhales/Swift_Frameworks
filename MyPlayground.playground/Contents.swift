import UIKit
import Foundation

let square = sqrt(4.0)
let power = pow(2.0, 2.0)

let maximum = max(square,power)

print("The maximum value is \(maximum)")

var text:NSString = NSString(string: "Hello")

var text2 = "Hello World"
var newText = text2 as NSString

var age = 44

var myText = String(format: "My age is %d", arguments: [age])

var myText2 = String(format: "My %@ is %d",arguments:["age",age])

var length = 12.3472

var myText3 = String(format:"%.2f metres",arguments:[length])

var string = "Orange"
var search = "Apple"

var result = string.compare(search)
switch result{
case .orderedSame:
    print("String and Search are equal")
case .orderedDescending:
    print("String follows Search")
case .orderedAscending:
    print("String precedes Search")
}

var string2 = "Orange"
var search2 = "ORANGE"

var result2 = string2.compare(search2,options: .caseInsensitive)

switch result2{
case .orderedSame:
    print("String2 and Search2 are Equal")
case .orderedDescending:
    print("String2 follows Search2")
case .orderedAscending:
    print("String2 precedes Search2")
}

var string3 = "905-525-6666"
var search3 = "905"

var start = string3.startIndex
var end = string3.firstIndex(of: "-")

if let endIndex = end{
    let result = string3.compare(search3,options: .caseInsensitive,range: start..<endIndex)
    if result == .orderedSame{
        print("String3 and Search3 are equal")
    }else{
        print("String3 and Search3 are equal")
    }
}

var string4 = "The suitcase is Black"
var search4 = "black"
var range4 = string4.range(of: search4,options: .caseInsensitive)
if let rangeToReplace = range4{
    string4.replaceSubrange(rangeToReplace,with:"Red")
}else{
    print("Not Found")
}

print("String 4 \(string4)")
let range6 = NSRange(4..<10)
print("Initial: \(range6.location)")
print("Length: \(range6.length)")

let text4 = "Hello World"
if let start = text4.firstIndex(of: "W"){
    let newRange = NSRange(start...,in:text4)
    print("Initial: \(newRange.location)")
    print("Length: \(newRange.length)")
}


var number = NSNumber(value:35)
var duplicate = number.doubleValue * 2

print("Duplicate \(duplicate)")

var money = NSNumber(value: 5.6897)
let format = NumberFormatter()
format.numberStyle = .currency
format.roundingMode = .floor

var price = format.string(from: money)
var money2 = NSNumber(value:5.68)
let format2 = NumberFormatter()
format2.numberStyle = .decimal
format2.minimumFractionDigits = 3
format2.maximumFractionDigits = 3

var price2 = format2.string(from: money2)

print("Price 2: \(price2!)")


var money3 = 5.6897
var total = money3 * 4

let format3 = NumberFormatter()
format3.numberStyle = .currency
format3.roundingMode = .ceiling
//format3.numberStyle = .spellOut

var price3 = format3.string(from: NSNumber(value: money3))
var result3 = format3.string(from: NSNumber(value:total))

let roundUp = NSDecimalNumberHandler(roundingMode: .plain, scale: 2, raiseOnExactness: false, raiseOnOverflow: false, raiseOnUnderflow: false, raiseOnDivideByZero: true)

NSDecimalNumber.defaultBehavior = roundUp

var money4 = NSDecimalNumber(value: 35.5761)
var quantity = NSDecimalNumber(value:3.20)


var currentDate = Date()
var nextDay = Date(timeIntervalSinceNow: 24*60*60)
print(nextDay)

var tenDays = Date(timeInterval: -10 * 24 * 3600, since: nextDay)
print(tenDays)

var days = 7
var today = Date()
var event = Date(timeIntervalSinceNow: Double(days)*24*3600)

print("Event is \(event)")

if today.compare(event) == .orderedAscending{
    let interval = event.timeIntervalSince(today)
    print("We have to wait \(interval) seconds")
}

var today2 = Date()
let calendar = Calendar.current
var components = calendar.dateComponents([.year], from: today2)
print("The year is \(components.year!)")

var components2 = calendar.dateComponents([.year,.month,.day], from: today2)
print("Today: \(components2.day!) - \(components2.month!) - \(components2.year!)")

var components22 = DateComponents()
components22.year = 1970
components22.month = 8
components22.day = 21
var birthday = calendar.date(from:components22)

let id = Calendar.Identifier.gregorian
let calendar2 = Calendar(identifier: id)

var components3 = DateComponents()
components3.year = 1970
components3.month = 8
components3.day = 13

var birthday2 = calendar2.date(from: components3)

// Adding 120 days
let id2 = Calendar.Identifier.gregorian
let calendar3 = Calendar(identifier:id2)
var components4 = DateComponents()
components4.day = 120
var today4 = Date()
var appointment = calendar3.date(byAdding: components4, to: today4)

let calendar4 = Calendar.current
var components5 = DateComponents()
components5.year = 1989
components5.month = 4
components5.day = 31

var today5 = Date()
var birthday5 = calendar4.date(from: components5)

if let olddate = birthday5{
    var components6 = calendar4.dateComponents([.day], from: olddate,to:today5)
    print("Days between dates: \(components6.day!)")
}


let calendar5 = Calendar.current
var components7 = DateComponents()
components7.year = 1970
components7.month = 8
components7.day = 21

var birthday6 = calendar5.date(from: components7)
components7.year = 2020
components7.month = 8
components7.day = 21

var future7 = calendar5.date(from: components7)

if birthday6 != nil && future7 != nil{
    let today = Date()
    let interval = DateInterval(start:birthday6!,end:future7!)
    if interval.contains(today){
        print("You still have time")
    }
}

var today8 = Date()
let formatter = DateFormatter()
formatter.dateStyle = DateFormatter.Style.medium
formatter.timeStyle = DateFormatter.Style.medium

var mydate = formatter.string(from:today8)

var today9 = Date()
let formatter2 = DateFormatter()
formatter2.dateStyle = DateFormatter.Style.full
var myDate2 = formatter2.string(from:today9)
//print()

var today10 = Date()
let formatter3 = DateFormatter()
formatter3.dateFormat = "yyyy - MM - dd"
var myDate3 = formatter3.string(from: today10)
print(myDate3)

var today11 = Date()
let formatter4 = DateFormatter()
formatter4.dateStyle = DateFormatter.Style.full

let chinaLocale = Locale(identifier: "zh_CN")
//print(Locale.availableIdentifiers)
formatter4.locale = chinaLocale

let displayDate = formatter4.string(from: today11)

let tokyoTimeZone = TimeZone(identifier: "Asia/Tokyo")
let madridTimeZone = TimeZone(identifier: "Europe/Madrid")

var today12 = Date()
let formatter5 = DateFormatter()
formatter5.dateStyle = DateFormatter.Style.short
formatter5.timeStyle = DateFormatter.Style.short

formatter5.timeZone = tokyoTimeZone

let tokyoDate = formatter5.string(from: today12)

formatter5.timeZone  = madridTimeZone
let madridTime = formatter5.string(from: today12)

var length = Measurement(value: 30, unit: UnitLength.centimeters)
var weight = Measurement(value: 5, unit: UnitMass.pounds)

var length2 = Measurement(value: 200, unit: UnitLength.centimeters)
var weight2 = Measurement(value: 800, unit: UnitLength.centimeters)

var total22 = length2 + weight2

print(total22)

var length3 = Measurement(value: 300, unit: UnitLength.meters)
var width3 = Measurement(value: 2, unit: UnitLength.kilometers)

var total33 = length3 + width3

print(total33)

print("Converting Units")
var length4 = Measurement(value: 300, unit: UnitLength.meters)
var width4 = Measurement(value: 2, unit: UnitLength.kilometers)

length4.convert(to: UnitLength.kilometers)

var total44 = length4 + width4
print(total44)

var length6 = Measurement(value: 40, unit: UnitLength.kilometers)

var formatter8 = MeasurementFormatter()
formatter8.unitStyle = MeasurementFormatter.UnitStyle.long
formatter8.unitOptions = MeasurementFormatter.UnitOptions.naturalScale
var newValue8 = formatter8.string(from: length6)

var formatter9 = MeasurementFormatter()
formatter9.unitStyle = MeasurementFormatter.UnitStyle.long
formatter9.unitOptions = MeasurementFormatter.UnitOptions.naturalScale
formatter9.locale = Locale(identifier: "zh_CN")

var newValue9 = formatter9.string(from: length6)

var length7 = Measurement(value: 40, unit: UnitLength.kilometers)
var formatter10 = MeasurementFormatter()
formatter10.unitStyle = MeasurementFormatter.UnitStyle.long
formatter10.unitOptions = MeasurementFormatter.UnitOptions.naturalScale

var formatNumber = NumberFormatter()
formatNumber.minimumIntegerDigits = 6
formatter10.numberFormatter = formatNumber

var newvalue10 = formatter10.string(from: length7)


