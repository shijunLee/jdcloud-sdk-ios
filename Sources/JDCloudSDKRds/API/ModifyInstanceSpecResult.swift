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

   实例管理
   实例管理相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 实例扩容，支持升级实例的CPU，内存及磁盘。目前暂不支持实例降配&lt;br&gt;- 仅支持MySQL
@objc(ModifyInstanceSpecResult)
public class ModifyInstanceSpecResult:NSObject,JdCloudResult
{
    /// 生成的订单号
    var orderId:String?



    public override init(){
        super.init()
    }

    enum ModifyInstanceSpecResultCodingKeys: String, CodingKey {
        case orderId
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyInstanceSpecResultCodingKeys.self)
        self.orderId = try decoderContainer.decode(String?.self, forKey: .orderId)
    }
}
public extension ModifyInstanceSpecResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyInstanceSpecResultCodingKeys.self)
        try encoderContainer.encode(orderId, forKey: .orderId)
    }
}
