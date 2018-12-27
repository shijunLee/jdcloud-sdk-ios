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

   云物理服务器
   云物理服务器操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询单台云物理服务器详细信息
@objc(DescribeInstanceResult)
public class DescribeInstanceResult:NSObject,JdCloudResult
{
    /// Instance
    var instance:Instance?



    public override init(){
        super.init()
    }

    enum DescribeInstanceResultCodingKeys: String, CodingKey {
        case instance
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeInstanceResultCodingKeys.self)
        self.instance = try decoderContainer.decode(Instance?.self, forKey: .instance)
    }
}
public extension DescribeInstanceResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeInstanceResultCodingKeys.self)
        try encoderContainer.encode(instance, forKey: .instance)
    }
}
