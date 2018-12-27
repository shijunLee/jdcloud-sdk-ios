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

   Ip高防实例相关接口
   Ip高防实例相关接口，以及转发配置中实例级别的接口等

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  设置实例CC防护
@objc(ModifyInstanceCCRequest)
public class ModifyInstanceCCRequest:JdCloudRequest
{
    /// cc参数
    var cCSpec:CCSpec

    /// 实例id
    var instanceId:String


    public init(regionId: String,cCSpec:CCSpec,instanceId:String){
        self.cCSpec = cCSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyInstanceCCRequestRequestCodingKeys: String, CodingKey {
        case cCSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyInstanceCCRequestRequestCodingKeys.self)
        try encoderContainer.encode(cCSpec, forKey: .cCSpec)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
