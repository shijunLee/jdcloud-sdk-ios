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

   实例管理
   API related to MONGODB instances

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  数据恢复
@objc(RestoreInstanceRequest)
public class RestoreInstanceRequest:JdCloudRequest
{
    /// 备份ID
    var backupId:String

    /// Instance ID
    var instanceId:String


    public init(regionId: String,backupId:String,instanceId:String){
        self.backupId = backupId
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum RestoreInstanceRequestRequestCodingKeys: String, CodingKey {
        case backupId
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RestoreInstanceRequestRequestCodingKeys.self)
        try encoderContainer.encode(backupId, forKey: .backupId)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
