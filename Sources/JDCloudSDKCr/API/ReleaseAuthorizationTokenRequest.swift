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

   Authentication
   用户认证相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  释放用户 registry 的 token。
      ///       /// 
@objc(ReleaseAuthorizationTokenRequest)
public class ReleaseAuthorizationTokenRequest:JdCloudRequest
{
    /// 准备释放的 token ID，功能为指定token释放。
    var authorizationToken:String?

    /// true 表示强制删除用户当前registry下所有有效token的标志；false 表示删除所有有效token。
    var forceAll:Bool?

    /// 注册表名称
    var registryName:String


    public init(regionId: String,registryName:String){
        self.registryName = registryName
        super.init(regionId: regionId)
    }


    enum ReleaseAuthorizationTokenRequestRequestCodingKeys: String, CodingKey {
        case authorizationToken
        case forceAll
        case registryName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ReleaseAuthorizationTokenRequestRequestCodingKeys.self)
        try encoderContainer.encode(authorizationToken, forKey: .authorizationToken)
        try encoderContainer.encode(forceAll, forKey: .forceAll)
        try encoderContainer.encode(registryName, forKey: .registryName)

    }
}
