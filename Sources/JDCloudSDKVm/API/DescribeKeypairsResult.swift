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

   SSH密钥对
   关于SSH密钥对的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 批量查询密钥对。&lt;br&gt;
      ///       /// 此接口支持分页查询，默认每页20条。
      ///       /// 
@objc(DescribeKeypairsResult)
public class DescribeKeypairsResult:NSObject,JdCloudResult
{
    /// Keypairs
    var keypairs:Keypair?

    /// 总的数据条数
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeKeypairsResultCodingKeys: String, CodingKey {
        case keypairs
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeKeypairsResultCodingKeys.self)
        self.keypairs = try decoderContainer.decode(Keypair?.self, forKey: .keypairs)
        self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
    }
}
public extension DescribeKeypairsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeKeypairsResultCodingKeys.self)
        try encoderContainer.encode(keypairs, forKey: .keypairs)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}
