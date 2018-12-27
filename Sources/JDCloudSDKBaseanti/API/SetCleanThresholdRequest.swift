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

   DDoS基础防护相关接口
   DDoS基础防护相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置公网Ip的清洗阈值
@objc(SetCleanThresholdRequest)
public class SetCleanThresholdRequest:JdCloudRequest
{
    /// cc参数
    var cleanThresholdSpec:CleanThresholdSpec

    /// 公网ip
    var ip:String


    public init(regionId: String,cleanThresholdSpec:CleanThresholdSpec,ip:String){
        self.cleanThresholdSpec = cleanThresholdSpec
        self.ip = ip
        super.init(regionId: regionId)
    }


    enum SetCleanThresholdRequestRequestCodingKeys: String, CodingKey {
        case cleanThresholdSpec
        case ip
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: SetCleanThresholdRequestRequestCodingKeys.self)
        try encoderContainer.encode(cleanThresholdSpec, forKey: .cleanThresholdSpec)
        try encoderContainer.encode(ip, forKey: .ip)

    }
}
