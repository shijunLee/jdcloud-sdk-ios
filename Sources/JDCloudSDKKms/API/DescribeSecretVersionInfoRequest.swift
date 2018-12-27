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

   Secret Management Service
   基于硬件保护机密的安全数据托管服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取指定机密版本的详细信息
@objc(DescribeSecretVersionInfoRequest)
public class DescribeSecretVersionInfoRequest:JdCloudRequest
{
    /// 机密ID
    var secretId:String


    public init(regionId: String,secretId:String){
        self.secretId = secretId
        super.init(regionId: regionId)
    }


    enum DescribeSecretVersionInfoRequestRequestCodingKeys: String, CodingKey {
        case secretId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeSecretVersionInfoRequestRequestCodingKeys.self)
        try encoderContainer.encode(secretId, forKey: .secretId)

    }
}
