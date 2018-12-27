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

   弹性网卡
   弹性网卡相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  给网卡绑定弹性Ip接口
@objc(AssociateElasticIpRequest)
public class AssociateElasticIpRequest:JdCloudRequest
{
    /// 绑定的弹性Ip Id
    var elasticIpId:String?

    /// 绑定弹性Ip到指定的privateIp
    var privateIpAddress:String?

    /// 绑定的弹性Ip地址
    var elasticIpAddress:String?

    /// networkInterface ID
    var networkInterfaceId:String


    public init(regionId: String,networkInterfaceId:String){
        self.networkInterfaceId = networkInterfaceId
        super.init(regionId: regionId)
    }


    enum AssociateElasticIpRequestRequestCodingKeys: String, CodingKey {
        case elasticIpId
        case privateIpAddress
        case elasticIpAddress
        case networkInterfaceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AssociateElasticIpRequestRequestCodingKeys.self)
        try encoderContainer.encode(elasticIpId, forKey: .elasticIpId)
        try encoderContainer.encode(privateIpAddress, forKey: .privateIpAddress)
        try encoderContainer.encode(elasticIpAddress, forKey: .elasticIpAddress)
        try encoderContainer.encode(networkInterfaceId, forKey: .networkInterfaceId)

    }
}
