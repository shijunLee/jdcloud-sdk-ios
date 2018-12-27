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
import JDCloudSDKCharge

///  dBInstance
@objc(DBInstance)
public class DBInstance:NSObject,Codable{
    /// 实例ID
    var instanceId:String?
    /// 实例名称，具体规则可参见帮助中心文档:[名称及密码限制](../../../documentation/Cloud-Database-and-Cache/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var instanceName:String?
    /// 实例类别，例如主实例，只读实例等，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var instanceType:String?
    /// 实例引擎类型，如MySQL或SQL Server等，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var engine:String?
    /// 实例引擎版本，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var engineVersion:String?
    /// 地域ID，参见[地域及可用区对照表](../Enum-Definitions/Regions-AZ.md)
    var regionId:String?
    /// 可用区ID，第一个为主实例在的可用区，参见[地域及可用区对照表](../Enum-Definitions/Regions-AZ.md)
    var azId:[String?]?
    /// 实例状态，参见[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var instanceStatus:String?
    /// 实例创建时间
    var createTime:String?
    /// 计费配置
    var charge:Charge?



    public override init(){
            super.init()
    }

    enum DBInstanceCodingKeys: String, CodingKey {
        case instanceId
        case instanceName
        case instanceType
        case engine
        case engineVersion
        case regionId
        case azId
        case instanceStatus
        case createTime
        case charge
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DBInstanceCodingKeys.self)
        self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        self.engine = try decoderContainer.decode(String?.self, forKey: .engine)
        self.engineVersion = try decoderContainer.decode(String?.self, forKey: .engineVersion)
        self.regionId = try decoderContainer.decode(String?.self, forKey: .regionId)
        self.azId = try decoderContainer.decode([String?]?.self, forKey: .azId)
        self.instanceStatus = try decoderContainer.decode(String?.self, forKey: .instanceStatus)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
    }
}
public extension DBInstance{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DBInstanceCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(engine, forKey: .engine)
         try encoderContainer.encode(engineVersion, forKey: .engineVersion)
         try encoderContainer.encode(regionId, forKey: .regionId)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(instanceStatus, forKey: .instanceStatus)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(charge, forKey: .charge)
    }
}