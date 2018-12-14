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

   弹性伸缩实例
   弹性伸缩实例相关操作接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改实例保护状态
public class ModifyInstancesProtectionRequest:JdCloudRequest
{
    /// 需要保护的实例ID数组
    var protect:String?

    /// 需要解除保护的实例ID数组
    var unprotect:String?

    /// 组uuid
    var asGroupUuid:String


    public init(regionId: String,asGroupUuid:String){
        self.asGroupUuid = asGroupUuid
        super.init(regionId: regionId)
    }


    enum ModifyInstancesProtectionRequestRequestCodingKeys: String, CodingKey {
        case protect
        case unprotect
        case asGroupUuid
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyInstancesProtectionRequestRequestCodingKeys.self)
        try container.encode(protect, forKey: .protect)
        try container.encode(unprotect, forKey: .unprotect)
        try container.encode(asGroupUuid, forKey: .asGroupUuid)

    }
}