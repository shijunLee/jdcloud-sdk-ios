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
   实例管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 创建一个RDS实例，用户可以使用相应的数据库客户端或者应用程序通过域名和端口链接到该RDS实例上，进行操作。
@objc(CreateInstanceResult)
public class CreateInstanceResult:NSObject,JdCloudResult
{
    /// InstanceId
    var instanceId:String?



    public override init(){
        super.init()
    }

    enum CreateInstanceResultCodingKeys: String, CodingKey {
        case instanceId
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateInstanceResultCodingKeys.self)
        self.instanceId = try decoderContainer.decode(String?.self, forKey: .instanceId)
    }
}
public extension CreateInstanceResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateInstanceResultCodingKeys.self)
        try encoderContainer.encode(instanceId, forKey: .instanceId)
    }
}