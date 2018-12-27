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

   Acl
   Acl相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  给子网绑定networkAcl接口
@objc(AssociateNetworkAclRequest)
public class AssociateNetworkAclRequest:JdCloudRequest
{
    /// networkAcl要绑定的子网ID列表, subnet已被其他networkAcl绑定时，自动解绑
    var subnetIds:String?

    /// networkAclId ID
    var networkAclId:String


    public init(regionId: String,networkAclId:String){
        self.networkAclId = networkAclId
        super.init(regionId: regionId)
    }


    enum AssociateNetworkAclRequestRequestCodingKeys: String, CodingKey {
        case subnetIds
        case networkAclId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: AssociateNetworkAclRequestRequestCodingKeys.self)
        try encoderContainer.encode(subnetIds, forKey: .subnetIds)
        try encoderContainer.encode(networkAclId, forKey: .networkAclId)

    }
}
