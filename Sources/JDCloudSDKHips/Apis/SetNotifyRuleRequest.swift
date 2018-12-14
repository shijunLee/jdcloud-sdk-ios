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

   JDCLOUD 位置信息 API
   报警通知相关信息接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置报警通知规则
public class SetNotifyRuleRequest:JdCloudRequest
{
    /// 规则Id
    var ruleId:Int64

    /// 发送方式。1为站内信，2为邮件，3为短信。
    var sendWay:Int?

    /// 发送时间方式。 0为8点到20点，1为24小时。
    var sendTime:Int?

    /// 启用/禁用
    var enabled:Int?

    /// 联系人id列表, 逗号分隔
    var contactIds:String?

    /// 联系人组id列表, 逗号分隔
    var contactgroupIds:String?


    public init(regionId: String,ruleId:Int64){
        self.ruleId = ruleId
        super.init(regionId: regionId)
    }


    enum SetNotifyRuleRequestRequestCodingKeys: String, CodingKey {
        case ruleId
        case sendWay
        case sendTime
        case enabled
        case contactIds
        case contactgroupIds
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: SetNotifyRuleRequestRequestCodingKeys.self)
        try container.encode(ruleId, forKey: .ruleId)
        try container.encode(sendWay, forKey: .sendWay)
        try container.encode(sendTime, forKey: .sendTime)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(contactIds, forKey: .contactIds)
        try container.encode(contactgroupIds, forKey: .contactgroupIds)

    }
}