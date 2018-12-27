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

   
   

   
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation

///  describeMetricDataSpec
@objc(DescribeMetricDataSpec)
public class DescribeMetricDataSpec:NSObject,Codable{
    /// 指标聚合方式，每个指标都有默认的聚合方式， 可选值包括：sum,avg.max.min
    var aggrType:String?
    /// 查询时间范围的结束时间， UTC时间，格式：2016-12- yyyy-MM-dd&#39;T&#39;HH:mm:ssZ（为空时，将由startTime与timeInterval计算得出）
      /// in: query
    var endTime:String?
    /// 是否对查询的tags分组
      /// in: query
    var groupBy:Bool?
    /// 资源的uuid
    /// Required:true
    var resourceId:String
    /// 资源的类型，取值vm, lb, ip, database 等
    /// Required:true
    var serviceCode:String
    /// 查询时间范围的开始时间， UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ssZ（默认为当前时间，早于30d时，将被重置为30d）
      /// in: query
    var startTime:String?
    /// 自定义标签
      /// in: query
    var tags:TagFilter?
    /// 时间间隔：1h，6h，12h，1d，3d，7d，14d，固定时间间隔，timeInterval 与 endTime 至少填一项
      /// in: query
    var timeInterval:String?



    public  init(resourceId:String,serviceCode:String){
             self.resourceId = resourceId
             self.serviceCode = serviceCode
    }

    enum DescribeMetricDataSpecCodingKeys: String, CodingKey {
        case aggrType
        case endTime
        case groupBy
        case resourceId
        case serviceCode
        case startTime
        case tags
        case timeInterval
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeMetricDataSpecCodingKeys.self)
        self.aggrType = try decoderContainer.decode(String?.self, forKey: .aggrType)
        self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        self.groupBy = try decoderContainer.decode(Bool?.self, forKey: .groupBy)
        self.resourceId = try decoderContainer.decode(String.self, forKey: .resourceId)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        self.tags = try decoderContainer.decode(TagFilter?.self, forKey: .tags)
        self.timeInterval = try decoderContainer.decode(String?.self, forKey: .timeInterval)
    }
}
public extension DescribeMetricDataSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeMetricDataSpecCodingKeys.self)
         try encoderContainer.encode(aggrType, forKey: .aggrType)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(groupBy, forKey: .groupBy)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(tags, forKey: .tags)
         try encoderContainer.encode(timeInterval, forKey: .timeInterval)
    }
}
