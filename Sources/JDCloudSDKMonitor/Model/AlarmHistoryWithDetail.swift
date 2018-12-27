/* Copyright 2018 JDCLOUD.COM

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

     http:#www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  alarmHistoryWithDetail
@objc(AlarmHistoryWithDetail)
public class AlarmHistoryWithDetail:NSObject,Codable{
    /// 告警联系人
    var contacts:DescribedNoticeContacts?
    /// 用于前端显示的‘触发告警级别’。从低到高分别为‘普通’, ‘紧急’, ‘严重’
    var noticeLevel:String?
    /// noticeTime
    var noticeTime:Int64?
    /// Rule
    var rule:Rule?
    /// 告警值
    var value:Double?



    public override init(){
            super.init()
    }

    enum AlarmHistoryWithDetailCodingKeys: String, CodingKey {
        case contacts
        case noticeLevel
        case noticeTime
        case rule
        case value
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: AlarmHistoryWithDetailCodingKeys.self)
        self.contacts = try decoderContainer.decode(DescribedNoticeContacts?.self, forKey: .contacts)
        self.noticeLevel = try decoderContainer.decode(String?.self, forKey: .noticeLevel)
        self.noticeTime = try decoderContainer.decode(Int64?.self, forKey: .noticeTime)
        self.rule = try decoderContainer.decode(Rule?.self, forKey: .rule)
        self.value = try decoderContainer.decode(Double?.self, forKey: .value)
    }
}
public extension AlarmHistoryWithDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AlarmHistoryWithDetailCodingKeys.self)
         try encoderContainer.encode(contacts, forKey: .contacts)
         try encoderContainer.encode(noticeLevel, forKey: .noticeLevel)
         try encoderContainer.encode(noticeTime, forKey: .noticeTime)
         try encoderContainer.encode(rule, forKey: .rule)
         try encoderContainer.encode(value, forKey: .value)
    }
}
