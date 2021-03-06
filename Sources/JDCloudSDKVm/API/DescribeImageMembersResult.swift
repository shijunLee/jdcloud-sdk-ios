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

   镜像
   关于主机镜像操作的相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询镜像共享帐户列表，只允许操作您的个人私有镜像。
      ///       /// 
@objc(DescribeImageMembersResult)
public class DescribeImageMembersResult:NSObject,JdCloudResult
{
    /// Pins
    var pins:String?



    public override init(){
        super.init()
    }

    enum DescribeImageMembersResultCodingKeys: String, CodingKey {
        case pins
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeImageMembersResultCodingKeys.self)
        self.pins = try decoderContainer.decode(String?.self, forKey: .pins)
    }
}
public extension DescribeImageMembersResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeImageMembersResultCodingKeys.self)
        try encoderContainer.encode(pins, forKey: .pins)
    }
}
