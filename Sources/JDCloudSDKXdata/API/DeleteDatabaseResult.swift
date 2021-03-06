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

/// 删除用户实例的指定数据库
@objc(DeleteDatabaseResult)
public class DeleteDatabaseResult:NSObject,JdCloudResult
{
    /// Status
    var status:Bool?

    /// Message
    var message:String?



    public override init(){
        super.init()
    }

    enum DeleteDatabaseResultCodingKeys: String, CodingKey {
        case status
        case message
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DeleteDatabaseResultCodingKeys.self)
        self.status = try decoderContainer.decode(Bool?.self, forKey: .status)
        self.message = try decoderContainer.decode(String?.self, forKey: .message)
    }
}
public extension DeleteDatabaseResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteDatabaseResultCodingKeys.self)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(message, forKey: .message)
    }
}
