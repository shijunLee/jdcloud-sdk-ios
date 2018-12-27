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

   Monitoring Rules APIs
   云监控规则相关接口，提供创建、查询、修改、删除监控规则等功能

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

@objc(CreateAlarmResponse)
public class CreateAlarmResponse:NSObject,Codable
{
    var requestId:String?;

    var error:ServiceError?;

    var result:CreateAlarmResult?;

    enum CreateAlarmResponseCodingKeys: String, CodingKey {
        case requestId
        case error
        case result
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: CreateAlarmResponseCodingKeys.self)
        self.requestId = try decoderContainer.decodeIfPresent(String?.self, forKey: .requestId) ?? nil
        self.error = try decoderContainer.decodeIfPresent(ServiceError?.self, forKey: .error) ?? nil
        self.result = try decoderContainer.decodeIfPresent(CreateAlarmResult?.self, forKey: .result) ?? nil
    }
}

public extension CreateAlarmResponse{
        public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAlarmResponseCodingKeys.self)
        try encoderContainer.encode(requestId, forKey: .requestId)
        try encoderContainer.encode(error, forKey: .error)
        try encoderContainer.encode(result, forKey: .result)
    }
}