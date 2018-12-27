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

   云硬盘相关接口
   云硬盘相关接口，提供批量创建云硬盘，查询云硬盘，删除云硬盘，对云硬盘进行扩容，修改云硬盘信息以及使用快照恢复云硬盘等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改云硬盘的名字或描述信息
@objc(ModifyDiskAttributeRequest)
public class ModifyDiskAttributeRequest:JdCloudRequest
{
    /// 云硬盘名称
    var name:String?

    /// 云硬盘描述，name和description必须要指定一个
    var descriptionValue:String?

    /// 云硬盘ID
    var diskId:String


    public init(regionId: String,diskId:String){
        self.diskId = diskId
        super.init(regionId: regionId)
    }


    enum ModifyDiskAttributeRequestRequestCodingKeys: String, CodingKey {
        case name
        case descriptionValue = "description"
        case diskId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyDiskAttributeRequestRequestCodingKeys.self)
        try encoderContainer.encode(name, forKey: .name)
        try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
        try encoderContainer.encode(diskId, forKey: .diskId)

    }
}
