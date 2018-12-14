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

   实例管理
   API related to MONGODB instances

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  重置密码
public class ResetPasswordRequest:JdCloudRequest
{
    /// 新密码，必须包含且只支持字母及数字，不少于8字符不超过16字符。
    var accountPassword:String

    /// Instance ID
    var instanceId:String


    public init(regionId: String,accountPassword:String,instanceId:String){
        self.accountPassword = accountPassword
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ResetPasswordRequestRequestCodingKeys: String, CodingKey {
        case accountPassword
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ResetPasswordRequestRequestCodingKeys.self)
        try container.encode(accountPassword, forKey: .accountPassword)
        try container.encode(instanceId, forKey: .instanceId)

    }
}