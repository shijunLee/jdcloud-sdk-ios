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

///  actionlog
@objc(Actionlog)
public class Actionlog:NSObject,Codable{
    /// 操作记录的ID
    var id:Int?
    /// 用户名
    var userPin:String?
    /// 操作的域名
    var domain:String?
    /// 操作类型：1新增 2修改 3删除
    var type:Int?
    /// 操作的详细情况
    var detail:String?
    /// 操作发生的时间
    var time:Int64?
    /// 操作的结果，成功true, 失败false
    var success:Bool?
    /// 操作失败的原因
    var failReason:String?
    /// 操作者的IP
    var clientIp:String?



    public override init(){
            super.init()
    }

    enum ActionlogCodingKeys: String, CodingKey {
        case id
        case userPin
        case domain
        case type
        case detail
        case time
        case success
        case failReason
        case clientIp
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ActionlogCodingKeys.self)
        self.id = try decoderContainer.decode(Int?.self, forKey: .id)
        self.userPin = try decoderContainer.decode(String?.self, forKey: .userPin)
        self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        self.type = try decoderContainer.decode(Int?.self, forKey: .type)
        self.detail = try decoderContainer.decode(String?.self, forKey: .detail)
        self.time = try decoderContainer.decode(Int64?.self, forKey: .time)
        self.success = try decoderContainer.decode(Bool?.self, forKey: .success)
        self.failReason = try decoderContainer.decode(String?.self, forKey: .failReason)
        self.clientIp = try decoderContainer.decode(String?.self, forKey: .clientIp)
    }
}
public extension Actionlog{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ActionlogCodingKeys.self)
         try encoderContainer.encode(id, forKey: .id)
         try encoderContainer.encode(userPin, forKey: .userPin)
         try encoderContainer.encode(domain, forKey: .domain)
         try encoderContainer.encode(type, forKey: .type)
         try encoderContainer.encode(detail, forKey: .detail)
         try encoderContainer.encode(time, forKey: .time)
         try encoderContainer.encode(success, forKey: .success)
         try encoderContainer.encode(failReason, forKey: .failReason)
         try encoderContainer.encode(clientIp, forKey: .clientIp)
    }
}
