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

   负载均衡器
   负载均衡器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCharge
import JDCloudSDKVpc


///  创建负载均衡
public class CreateLoadBalancerRequest:JdCloudRequest
{
    /// LoadBalancer的名称,只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符
    var loadBalancerName:String

    /// LoadBalancer所属子网的Id
    var subnetId:String

    /// LoadBalancer的类型，取值：alb、nlb
    var type:String?

    /// LoadBalancer所属availability Zone列表
    var azs:String?

    /// 计费配置
    var chargeSpec:ChargeSpec?

    /// 负载均衡关联的弹性IP规格
    var elasticIp:ElasticIpSpec?

    /// 【alb】 安全组 ID列表
    var securityGroupIds:String?

    /// LoadBalancer的描述信息,允许输入UTF-8编码下的全部字符，不超过256字符
    var description:String?

    /// 删除保护，取值为True(开启)或False(关闭)，默认为False
    var deleteProtection:Bool?


    public init(regionId: String,loadBalancerName:String,subnetId:String){
        self.loadBalancerName = loadBalancerName
        self.subnetId = subnetId
        super.init(regionId: regionId)
    }


    enum CreateLoadBalancerRequestRequestCodingKeys: String, CodingKey {
        case loadBalancerName
        case subnetId
        case type
        case azs
        case chargeSpec
        case elasticIp
        case securityGroupIds
        case description
        case deleteProtection
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CreateLoadBalancerRequestRequestCodingKeys.self)
        try container.encode(loadBalancerName, forKey: .loadBalancerName)
        try container.encode(subnetId, forKey: .subnetId)
        try container.encode(type, forKey: .type)
        try container.encode(azs, forKey: .azs)
        try container.encode(chargeSpec, forKey: .chargeSpec)
        try container.encode(elasticIp, forKey: .elasticIp)
        try container.encode(securityGroupIds, forKey: .securityGroupIds)
        try container.encode(description, forKey: .description)
        try container.encode(deleteProtection, forKey: .deleteProtection)

    }
}