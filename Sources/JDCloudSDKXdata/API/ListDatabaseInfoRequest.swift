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

   database
   API related to XDATA-DW database

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询用户实例的所有数据库信息
@objc(ListDatabaseInfoRequest)
public class ListDatabaseInfoRequest:JdCloudRequest
{
    /// 实例名称
    var instanceName:String


    public init(regionId: String,instanceName:String){
        self.instanceName = instanceName
        super.init(regionId: regionId)
    }


    enum ListDatabaseInfoRequestRequestCodingKeys: String, CodingKey {
        case instanceName
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ListDatabaseInfoRequestRequestCodingKeys.self)
        try encoderContainer.encode(instanceName, forKey: .instanceName)

    }
}
