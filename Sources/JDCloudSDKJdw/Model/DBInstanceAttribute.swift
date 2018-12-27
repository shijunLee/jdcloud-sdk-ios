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

///  dBInstanceAttribute
@objc(DBInstanceAttribute)
public class DBInstanceAttribute:NSObject,Codable{
    /// 实例ID
    var instanceId:String?
    /// 实例名称
    var instanceName:String?
    /// 实例规格
    var nodeType:String?
    /// 节点数量
    var nodeNumber:Int?
    /// 可用区
    var azId:String?
    /// VPCID
    var vpcId:String?
    /// 子网ID
    var subnetId:String?
    /// 域名
    var instanceDomain:String?
    /// 端口号
    var instancePort:String?
    /// 数据库账号
    var accountName:String?
    /// 实例状态，Available：运行， Failure：故障 ，Creating：创建中， Deleting：删除中
    var instanceStatus:String?
    /// 创建时间
    var createTime:String?
    /// 节点信息
    var nodes:Node?
    /// 计费配置
    var charge:Charge?



    public override init(){
            super.init()
    }

    enum DBInstanceAttributeCodingKeys: String, CodingKey {
        case instanceId
        case instanceName
        case nodeType
        case nodeNumber
        case azId
        case vpcId
        case subnetId
        case instanceDomain
        case instancePort
        case accountName
        case instanceStatus
        case createTime
        case nodes
        case charge
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DBInstanceAttributeCodingKeys.self)
        self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        self.instanceName = try decoderContainer.decode(String?.self, forKey: .instanceName)
        self.nodeType = try decoderContainer.decode(String?.self, forKey: .nodeType)
        self.nodeNumber = try decoderContainer.decode(Int?.self, forKey: .nodeNumber)
        self.azId = try decoderContainer.decode(String?.self, forKey: .azId)
        self.vpcId = try decoderContainer.decode(String?.self, forKey: .vpcId)
        self.subnetId = try decoderContainer.decode(String?.self, forKey: .subnetId)
        self.instanceDomain = try decoderContainer.decode(String?.self, forKey: .instanceDomain)
        self.instancePort = try decoderContainer.decode(String?.self, forKey: .instancePort)
        self.accountName = try decoderContainer.decode(String?.self, forKey: .accountName)
        self.instanceStatus = try decoderContainer.decode(String?.self, forKey: .instanceStatus)
        self.createTime = try decoderContainer.decode(String?.self, forKey: .createTime)
        self.nodes = try decoderContainer.decode(Node?.self, forKey: .nodes)
        self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
    }
}
public extension DBInstanceAttribute{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DBInstanceAttributeCodingKeys.self)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceName, forKey: .instanceName)
         try encoderContainer.encode(nodeType, forKey: .nodeType)
         try encoderContainer.encode(nodeNumber, forKey: .nodeNumber)
         try encoderContainer.encode(azId, forKey: .azId)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(subnetId, forKey: .subnetId)
         try encoderContainer.encode(instanceDomain, forKey: .instanceDomain)
         try encoderContainer.encode(instancePort, forKey: .instancePort)
         try encoderContainer.encode(accountName, forKey: .accountName)
         try encoderContainer.encode(instanceStatus, forKey: .instanceStatus)
         try encoderContainer.encode(createTime, forKey: .createTime)
         try encoderContainer.encode(nodes, forKey: .nodes)
         try encoderContainer.encode(charge, forKey: .charge)
    }
}
