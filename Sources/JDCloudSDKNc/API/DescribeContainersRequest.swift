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

   原生容器
   原生容器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore
import JDCloudSDKCommon


///  批量查询原生容器的详细信息&lt;br&gt;
      ///       /// 此接口支持分页查询，默认每页20条。
      ///       /// 
@objc(DescribeContainersRequest)
public class DescribeContainersRequest:JdCloudRequest
{
    /// 页码；默认为1
    var pageNumber:Int?

    /// 分页大小；默认为20；取值范围[10, 100]
    var pageSize:Int?

    /// containerId - 实例ID，精确匹配，支持多个
      /// privateIpAddress - 主网卡IP地址，模糊匹配，支持单个
      /// az - 可用区，精确匹配，支持多个
      /// vpcId - 私有网络ID，精确匹配，支持多个
      /// status - 容器状态，精确匹配，支持多个
      /// name - 实例名称，模糊匹配，支持单个
      /// subnetId - 镜像ID，模糊匹配，支持单个
      /// 
    var filters:Filter?




    enum DescribeContainersRequestRequestCodingKeys: String, CodingKey {
        case pageNumber
        case pageSize
        case filters
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeContainersRequestRequestCodingKeys.self)
        try encoderContainer.encode(pageNumber, forKey: .pageNumber)
        try encoderContainer.encode(pageSize, forKey: .pageSize)
        try encoderContainer.encode(filters, forKey: .filters)

    }
}
