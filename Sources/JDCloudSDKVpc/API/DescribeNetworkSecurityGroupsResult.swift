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

   安全组
   安全组相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询安全组列表
@objc(DescribeNetworkSecurityGroupsResult)
public class DescribeNetworkSecurityGroupsResult:NSObject,JdCloudResult
{
    /// NetworkSecurityGroups
    var networkSecurityGroups:NetworkSecurityGroup?

    /// 总数量
    var totalCount:Double?



    public override init(){
        super.init()
    }

    enum DescribeNetworkSecurityGroupsResultCodingKeys: String, CodingKey {
        case networkSecurityGroups
        case totalCount
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeNetworkSecurityGroupsResultCodingKeys.self)
        self.networkSecurityGroups = try decoderContainer.decode(NetworkSecurityGroup?.self, forKey: .networkSecurityGroups)
        self.totalCount = try decoderContainer.decode(Double?.self, forKey: .totalCount)
    }
}
public extension DescribeNetworkSecurityGroupsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeNetworkSecurityGroupsResultCodingKeys.self)
        try encoderContainer.encode(networkSecurityGroups, forKey: .networkSecurityGroups)
        try encoderContainer.encode(totalCount, forKey: .totalCount)
    }
}