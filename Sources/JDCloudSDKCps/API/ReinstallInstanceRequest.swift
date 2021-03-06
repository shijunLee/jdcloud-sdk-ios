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

   云物理服务器
   云物理服务器操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  重装云物理服务器，只能重装stopped状态的服务器&lt;br/&gt;
      ///       /// - 可调用接口（describeOS）获取云物理服务器支持的操作系统列表
      ///       /// - 可调用接口（describeSoftware）获取云物理服务器支持的软件列表，也可以不预装软件
      ///       /// 
@objc(ReinstallInstanceRequest)
public class ReinstallInstanceRequest:JdCloudRequest
{
    /// 由客户端生成，用于保证请求的幂等性，长度不能超过36个字符；&lt;br/&gt;
      /// 如果多个请求使用了相同的clientToken，只会执行第一个请求，之后的请求直接返回第一个请求的结果&lt;br/&gt;
      /// 
    var clientToken:String?

    /// 云物理服务器配置
    var instanceSpec:ReinstallInstanceSpec

    /// 云物理服务器ID
    var instanceId:String


    public init(regionId: String,instanceSpec:ReinstallInstanceSpec,instanceId:String){
        self.instanceSpec = instanceSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ReinstallInstanceRequestRequestCodingKeys: String, CodingKey {
        case clientToken
        case instanceSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReinstallInstanceRequestRequestCodingKeys.self)
        try encoderContainer.encode(clientToken, forKey: .clientToken)
        try encoderContainer.encode(instanceSpec, forKey: .instanceSpec)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
