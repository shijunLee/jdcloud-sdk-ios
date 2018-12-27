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


///  修改云物理服务器部分信息，包括名称、描述
@objc(ModifyInstanceRequest)
public class ModifyInstanceRequest:JdCloudRequest
{
    /// 云物理服务器名称
    var name:String?

    /// 云物理服务器描述
    var descriptionValue:String?

    /// 云物理服务器ID
    var instanceId:String


    public init(regionId: String,instanceId:String){
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum ModifyInstanceRequestRequestCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyInstanceRequestRequestCodingKeys.self)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
