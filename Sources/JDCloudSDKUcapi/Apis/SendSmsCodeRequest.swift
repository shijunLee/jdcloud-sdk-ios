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

   verify相关接口
   API related to Verify

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  发送手机验证码
public class SendSmsCodeRequest:JdCloudRequest
{
    /// 用户pin
    var pin:String?

    /// 手机号码
    var mobile:String?

    /// 来源
    var source:String?




    enum SendSmsCodeRequestRequestCodingKeys: String, CodingKey {
        case pin
        case mobile
        case source
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: SendSmsCodeRequestRequestCodingKeys.self)
        try container.encode(pin, forKey: .pin)
        try container.encode(mobile, forKey: .mobile)
        try container.encode(source, forKey: .source)

    }
}