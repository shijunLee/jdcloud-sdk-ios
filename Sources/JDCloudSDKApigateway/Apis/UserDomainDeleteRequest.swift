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

   自定义域名
   api 自定义域名 service

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除用户域名接口
public class UserDomainDeleteRequest:JdCloudRequest
{
    /// 要删除domain的id集合，以,分隔
    var domainIds:String

    /// api分组id
    var apiGroupId:String?


    public init(regionId: String,domainIds:String){
        self.domainIds = domainIds
        super.init(regionId: regionId)
    }


    enum UserDomainDeleteRequestRequestCodingKeys: String, CodingKey {
        case domainIds
        case apiGroupId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: UserDomainDeleteRequestRequestCodingKeys.self)
        try container.encode(domainIds, forKey: .domainIds)
        try container.encode(apiGroupId, forKey: .apiGroupId)

    }
}