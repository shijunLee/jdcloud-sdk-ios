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

   配额
   与配额相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  查询配额，支持：云主机、镜像、密钥、模板、镜像共享
      ///       /// 
@objc(DescribeQuotasRequest)
public class DescribeQuotasRequest:JdCloudRequest
{
    /// resourceTypes - 资源类型，支持多个[instance，keypair，image，instanceTemplate，imageShare]
      /// 
    var filters:Filter?

    /// 私有镜像Id，查询镜像共享(imageShare)配额时，此参数必传
    var imageId:String?




    enum DescribeQuotasRequestRequestCodingKeys: String, CodingKey {
        case filters
        case imageId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeQuotasRequestRequestCodingKeys.self)
        try encoderContainer.encode(filters, forKey: .filters)
        try encoderContainer.encode(imageId, forKey: .imageId)

    }
}
