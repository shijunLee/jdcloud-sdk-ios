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

   快照相关接口
   快照相关接口，提供创建快照，查询快照信息，删除快照，修改快照信息等功能。

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改快照的名字或描述信息
public class ModifySnapshotAttributeRequest:JdCloudRequest
{
    /// 快照名称
    var name:String?

    /// 快照描述，name和description必须要指定一个
    var description:String?

    /// 快照ID
    var snapshotId:String


    public init(regionId: String,snapshotId:String){
        self.snapshotId = snapshotId
        super.init(regionId: regionId)
    }


    enum ModifySnapshotAttributeRequestRequestCodingKeys: String, CodingKey {
        case name
        case description
        case snapshotId
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifySnapshotAttributeRequestRequestCodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(snapshotId, forKey: .snapshotId)

    }
}