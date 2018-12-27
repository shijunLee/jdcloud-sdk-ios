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

   Key Management Service
   基于硬件保护密钥的安全数据托管服务

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取密钥列表
@objc(DescribeKeyListResult)
public class DescribeKeyListResult:NSObject,JdCloudResult
{
    /// KeyList
    var keyList:KeyInfo?

    /// Key的数量
    var totalCount:Int?



    public override init(){
        super.init()
    }

    enum DescribeKeyListResultCodingKeys: String, CodingKey {
        case keyList
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeKeyListResultCodingKeys.self)
        self.keyList = try decoderContainer.decode(KeyInfo?.self, forKey: .keyList)
        self.totalCount = try decoderContainer.decode(Int?.self, forKey: .totalCount)
    }
}
public extension DescribeKeyListResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeKeyListResultCodingKeys.self)
        try encoderContainer.encode(keyList, forKey: .keyList)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
