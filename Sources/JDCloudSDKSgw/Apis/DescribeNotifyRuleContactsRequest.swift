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

   告警通知配置相关接口
   API related to alarm-notify

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询报警通知规则联系人
public class DescribeNotifyRuleContactsRequest:JdCloudRequest
{
    /// 规则 Id
    var ruleId:String


    public init(regionId: String,ruleId:String){
        self.ruleId = ruleId
        super.init(regionId: regionId)
    }


    enum DescribeNotifyRuleContactsRequestRequestCodingKeys: String, CodingKey {
        case ruleId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DescribeNotifyRuleContactsRequestRequestCodingKeys.self)
        try container.encode(ruleId, forKey: .ruleId)

    }
}