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

   监控项相关接口
   监控项相关接口，提供可用监控项列表查询和监控数据查询等功能

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查看某资源的最后一个点,metric介绍：&lt;a href&#x3D;&quot;https://docs.jdcloud.com/cn/monitoring/metrics&quot;&gt;Metrics&lt;/a&gt;
@objc(LastDownsampleRequest)
public class LastDownsampleRequest:JdCloudRequest
{
    /// 资源的类型，取值vm, lb, ip, database 等
    var serviceCode:String

    /// 资源的uuid，支持多个resourceId批量查询，每个id用|分隔。 如：id1|id2|id3|id4
    var resourceId:String

    /// 自定义标签
    var tags:TagFilter?

    /// 查询时间范围的开始时间， UTC时间，格式：yyyy-MM-dd&#39;T&#39;HH:mm:ssZ（默认为当前时间，早于30d时，将被重置为30d）
    var startTime:String?

    /// 查询时间范围的结束时间， UTC时间，格式：2016-12- yyyy-MM-dd&#39;T&#39;HH:mm:ssZ（为空时，将由startTime与timeInterval计算得出）
    var endTime:String?

    /// 查询的时间间隔，最大不超过30天，支持分钟级别,小时级别，天级别，例如：1m、1h、1d
    var timeInterval:String?

    /// 聚合方式：max avg min等,用于不同维度之间聚合
    var aggrType:String?

    /// 聚合方式：max avg min等,用于将维度内一个周期数据聚合为一个点的聚合方式
    var downAggrType:String?

    /// 监控项英文标识(id)
    var metric:String


    public init(regionId: String,serviceCode:String,resourceId:String,metric:String){
        self.serviceCode = serviceCode
        self.resourceId = resourceId
        self.metric = metric
        super.init(regionId: regionId)
    }


    enum LastDownsampleRequestRequestCodingKeys: String, CodingKey {
        case serviceCode
        case resourceId
        case tags
        case startTime
        case endTime
        case timeInterval
        case aggrType
        case downAggrType
        case metric
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: LastDownsampleRequestRequestCodingKeys.self)
        try encoderContainer.encode(serviceCode, forKey: .serviceCode)
        try encoderContainer.encode(resourceId, forKey: .resourceId)
        try encoderContainer.encode(tags, forKey: .tags)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(timeInterval, forKey: .timeInterval)
        try encoderContainer.encode(aggrType, forKey: .aggrType)
        try encoderContainer.encode(downAggrType, forKey: .downAggrType)
        try encoderContainer.encode(metric, forKey: .metric)

    }
}