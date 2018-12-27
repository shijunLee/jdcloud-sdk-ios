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

/// 查询用户实例的所有数据库信息
@objc(ListDatabaseInfoResult)
public class ListDatabaseInfoResult:NSObject,JdCloudResult
{
    /// Status
    var status:Bool?

    /// Message
    var message:String?

    /// Data
    var data:DwDatabaseInfo?



    public override init(){
        super.init()
    }

    enum ListDatabaseInfoResultCodingKeys: String, CodingKey {
        case status
        case message
        case data
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ListDatabaseInfoResultCodingKeys.self)
        self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        self.message = try decoderContainer.decode(String?.self, forKey: .message)
        self.data = try decoderContainer.decode(DwDatabaseInfo?.self, forKey: .data)
    }
}
public extension ListDatabaseInfoResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ListDatabaseInfoResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
        try encoderContainer.encode(data, forKey: .data)
    }
}
