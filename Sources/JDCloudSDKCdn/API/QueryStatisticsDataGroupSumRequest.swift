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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询统计数据并进行汇总加和
@objc(QueryStatisticsDataGroupSumRequest)
public class QueryStatisticsDataGroupSumRequest:JdCloudRequest
{
    /// 查询起始时间,UTC时间，格式为:yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，示例:2018-10-21T10:00:00Z
    var startTime:String?

    /// 查询截止时间,UTC时间，格式为:yyyy-MM-dd&#39;T&#39;HH:mm:ss&#39;Z&#39;，示例:2018-10-21T10:00:00Z
    var endTime:String?

    /// 需要查询的域名, 必须为用户pin下有权限的域名
    var domain:String?

    /// 待查询的子域名
    var subDomain:String?

    /// 需要查询的字段
    var fields:String?

    /// Area
    var area:String?

    /// Isp
    var isp:String?

    /// Origin
    var origin:String?

    /// 时间粒度，可选值:[oneMin,fiveMin,followTime],followTime只会返回一个汇总后的数据
    var period:String?

    /// 分组依据
    var groupBy:String?




    enum QueryStatisticsDataGroupSumRequestRequestCodingKeys: String, CodingKey {
        case startTime
        case endTime
        case domain
        case subDomain
        case fields
        case area
        case isp
        case origin
        case period
        case groupBy
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: QueryStatisticsDataGroupSumRequestRequestCodingKeys.self)
        try encoderContainer.encode(startTime, forKey: .startTime)
        try encoderContainer.encode(endTime, forKey: .endTime)
        try encoderContainer.encode(domain, forKey: .domain)
        try encoderContainer.encode(subDomain, forKey: .subDomain)
        try encoderContainer.encode(fields, forKey: .fields)
        try encoderContainer.encode(area, forKey: .area)
        try encoderContainer.encode(isp, forKey: .isp)
        try encoderContainer.encode(origin, forKey: .origin)
        try encoderContainer.encode(period, forKey: .period)
        try encoderContainer.encode(groupBy, forKey: .groupBy)

    }
}
