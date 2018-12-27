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

   数据库管理
   数据库管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  创建一个数据库。 为了实例的管理和数据恢复，RDS对用户权限进行了限制，用户仅能通过控制台或本接口创建数据库
@objc(CreateDatabaseRequest)
public class CreateDatabaseRequest:JdCloudRequest
{
    /// 数据库名，数据库名称的限制请参考[帮助中心文档](../../../documentation/Cloud-Database-and-Cache/RDS/Introduction/Restrictions/SQLServer-Restrictions.md)
    var dbName:String

    /// 数据库的字符集名，当前支持的字符集请查看[枚举参数定义](../Enum-Definitions/Enum-Definitions.md)
    var characterSetName:String

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,dbName:String,characterSetName:String,instanceId:String){
        self.dbName = dbName
        self.characterSetName = characterSetName
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateDatabaseRequestRequestCodingKeys: String, CodingKey {
        case dbName
        case characterSetName
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateDatabaseRequestRequestCodingKeys.self)
        try encoderContainer.encode(dbName, forKey: .dbName)
        try encoderContainer.encode(characterSetName, forKey: .characterSetName)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
