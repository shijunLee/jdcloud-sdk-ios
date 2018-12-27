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

///  elasticIp
@objc(ElasticIp)
public class ElasticIp:NSObject,Codable{
    /// 弹性IP的Id
    var elasticIpId:String?
    /// 弹性IP地址
    var elasticIpAddress:String?
    /// 弹性ip的限速（单位：Mbps)
    var bandwidthMbps:Int?
    /// IP服务商，取值为bgp或no_bgp
    var provider:String?
    /// 私有IP的IPV4地址
    var privateIpAddress:String?
    /// 配置弹性网卡Id
    var networkInterfaceId:String?
    /// 实例Id
    var instanceId:String?
    /// 实例类型
    var instanceType:String?
    /// 计费配置
    var charge:Charge?
    /// 弹性ip创建时间
    var createdTime:String?
    /// 弹性ip可用区属性，如果为空，表示全可用区
    var az:String?



    public override init(){
            super.init()
    }

    enum ElasticIpCodingKeys: String, CodingKey {
        case elasticIpId
        case elasticIpAddress
        case bandwidthMbps
        case provider
        case privateIpAddress
        case networkInterfaceId
        case instanceId
        case instanceType
        case charge
        case createdTime
        case az
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ElasticIpCodingKeys.self)
        self.elasticIpId = try decoderContainer.decode(String?.self, forKey: .elasticIpId)
        self.elasticIpAddress = try decoderContainer.decode(String?.self, forKey: .elasticIpAddress)
        self.bandwidthMbps = try decoderContainer.decode(Int?.self, forKey: .bandwidthMbps)
        self.provider = try decoderContainer.decode(String?.self, forKey: .provider)
        self.privateIpAddress = try decoderContainer.decode(String?.self, forKey: .privateIpAddress)
        self.networkInterfaceId = try decoderContainer.decode(String?.self, forKey: .networkInterfaceId)
        self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
        self.instanceType = try decoderContainer.decode(String?.self, forKey: .instanceType)
        self.charge = try decoderContainer.decode(Charge?.self, forKey: .charge)
        self.createdTime = try decoderContainer.decode(String?.self, forKey: .createdTime)
        self.az = try decoderContainer.decode(String?.self, forKey: .az)
    }
}
public extension ElasticIp{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ElasticIpCodingKeys.self)
         try encoderContainer.encode(elasticIpId, forKey: .elasticIpId)
         try encoderContainer.encode(elasticIpAddress, forKey: .elasticIpAddress)
         try encoderContainer.encode(bandwidthMbps, forKey: .bandwidthMbps)
         try encoderContainer.encode(provider, forKey: .provider)
         try encoderContainer.encode(privateIpAddress, forKey: .privateIpAddress)
         try encoderContainer.encode(networkInterfaceId, forKey: .networkInterfaceId)
         try encoderContainer.encode(instanceId, forKey: .instanceId)
         try encoderContainer.encode(instanceType, forKey: .instanceType)
         try encoderContainer.encode(charge, forKey: .charge)
         try encoderContainer.encode(createdTime, forKey: .createdTime)
         try encoderContainer.encode(az, forKey: .az)
    }
}
