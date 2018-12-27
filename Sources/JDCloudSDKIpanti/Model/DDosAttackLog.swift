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

///  dDosAttackLog
@objc(DDosAttackLog)
public class DDosAttackLog:NSObject,Codable{
    /// 攻击流量大小
    var attackTraffic:Double?
    /// 是否触发黑洞，0否 1是
    var blackHole:Int?
    /// 攻击开始时间
    var startTime:String?
    /// 攻击结束时间
    var endTime:String?
    /// 流量单位，bps、Kbps、Mbps、Gbps
    var unit:String?
    /// 高防实例id
    var instanceId:Int64?
    /// 高防实例名称
    var name:String?



    public override init(){
            super.init()
    }

    enum DDosAttackLogCodingKeys: String, CodingKey {
        case attackTraffic
        case blackHole
        case startTime
        case endTime
        case unit
        case instanceId
        case name
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DDosAttackLogCodingKeys.self)
        self.attackTraffic = try decoderContainer.decode(Double?.self, forKey: .attackTraffic)
        self.blackHole = try decoderContainer.decode(Int?.self, forKey: .blackHole)
        self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        self.unit = try decoderContainer.decode(String?.self, forKey: .unit)
        self.instanceId = try decoderContainer.decode(Int64?.self, forKey: .instanceId)
        self.name = try decoderContainer.decode(String?.self, forKey: .name)
    }
}
public extension DDosAttackLog{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DDosAttackLogCodingKeys.self)
         try encoderContainer.encode(attackTraffic, forKey: .attackTraffic)
         try encoderContainer.encode(blackHole, forKey: .blackHole)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(unit, forKey: .unit)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(name, forKey: .name)
    }
}
