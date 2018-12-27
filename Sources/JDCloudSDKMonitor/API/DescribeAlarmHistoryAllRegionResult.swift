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

/// 查询报警历史
      ///       /// 检索条件组合优先级从高到低为
      ///       /// 1. serviceCode
      ///       /// 1.1 serviceCode + resourceId
      ///       /// 1.2 serviceCode + resourceIds
      ///       /// 2. serviceCodes
      ///       /// 3. 用户所有规则
@objc(DescribeAlarmHistoryAllRegionResult)
public class DescribeAlarmHistoryAllRegionResult:NSObject,JdCloudResult
{
    /// List
    var list:AlarmHistoryWithDetail?

    /// 总数
    var total:Int64?



    public override init(){
        super.init()
    }

    enum DescribeAlarmHistoryAllRegionResultCodingKeys: String, CodingKey {
        case list
        case total
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeAlarmHistoryAllRegionResultCodingKeys.self)
        self.list = try decoderContainer.decode(AlarmHistoryWithDetail?.self, forKey: .list)
        self.total = try decoderContainer.decode(Int64?.self, forKey: .total)
    }
}
public extension DescribeAlarmHistoryAllRegionResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeAlarmHistoryAllRegionResultCodingKeys.self)
        try encoderContainer.encode(list, forKey: .list)
        try encoderContainer.encode(total, forKey: .total)
    }
}
