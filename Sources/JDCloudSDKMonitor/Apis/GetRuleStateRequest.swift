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

   Monitoring Rules APIs
   云监控规则相关接口，提供创建、查询、修改、删除监控规则等功能

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询规则状态
public class GetRuleStateRequest:JdCloudRequest
{
    /// ServiceCode
    var serviceCode:String?

    /// ResourceID
    var resourceID:String?

    /// Datacenter
    var datacenter:String?

    /// RuleType
    var ruleType:Int64?




    enum GetRuleStateRequestRequestCodingKeys: String, CodingKey {
        case serviceCode
        case resourceID
        case datacenter
        case ruleType
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: GetRuleStateRequestRequestCodingKeys.self)
        try container.encode(serviceCode, forKey: .serviceCode)
        try container.encode(resourceID, forKey: .resourceID)
        try container.encode(datacenter, forKey: .datacenter)
        try container.encode(ruleType, forKey: .ruleType)

    }
}