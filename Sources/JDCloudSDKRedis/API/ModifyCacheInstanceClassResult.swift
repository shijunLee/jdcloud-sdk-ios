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

   缓存Redis实例接口
   缓存Redis实例相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 变更缓存Redis实例配置，只能变更运行状态的实例配置，变更配置的规格不能与之前的相同
      ///       /// 预付费用户，从集群版变配到主从版，新规格的内存大小要大于老规格的内存大小，从主从版到集群版，新规格的内存大小要不小于老规格的内存大小
      ///       /// 
@objc(ModifyCacheInstanceClassResult)
public class ModifyCacheInstanceClassResult:NSObject,JdCloudResult
{
    /// 本次变更请求的订单编号。
    var orderNum:String?



    public override init(){
        super.init()
    }

    enum ModifyCacheInstanceClassResultCodingKeys: String, CodingKey {
        case orderNum
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: ModifyCacheInstanceClassResultCodingKeys.self)
        self.orderNum = try decoderContainer.decode(String?.self, forKey: .orderNum)
    }
}
public extension ModifyCacheInstanceClassResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: ModifyCacheInstanceClassResultCodingKeys.self)
        try encoderContainer.encode(orderNum, forKey: .orderNum)
    }
}
