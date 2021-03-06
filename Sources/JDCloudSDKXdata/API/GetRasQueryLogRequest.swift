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

   query
   API related to XDATA-DW query

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  获取用户Spark SQL脚本的查询日志
@objc(GetRasQueryLogRequest)
public class GetRasQueryLogRequest:JdCloudRequest
{
    /// 用户名称
    var userName:String

    /// 查询id
    var queryId:String


    public init(regionId: String,userName:String,queryId:String){
        self.userName = userName
        self.queryId = queryId
        super.init(regionId: regionId)
    }


    enum GetRasQueryLogRequestRequestCodingKeys: String, CodingKey {
        case userName
        case queryId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetRasQueryLogRequestRequestCodingKeys.self)
        try encoderContainer.encode(userName, forKey: .userName)
        try encoderContainer.encode(queryId, forKey: .queryId)

    }
}
