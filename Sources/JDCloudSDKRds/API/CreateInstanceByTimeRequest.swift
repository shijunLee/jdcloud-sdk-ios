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


///  根据源实例备份创建一个新实例，并通过追加日志的方式，将新实例的数据恢复到跟源实例指定时间点的数据状态一样。&lt;br&gt;例如根据实例A在“2018-06-18 23:00:00”时间点创建一个实例B，就是新建一个实例B，该实例B的数据跟实例A在“2018-06-18 23:00:00”这个时间点的数据完全一致。&lt;br&gt;对于SQL Server，主备切换后30分钟内，不支持按时间点恢复/创建，例如在10:05分用户进行了主备切换，那么10:05 ~ 10:35这个时间段不能进行按时间点恢复/创建。&lt;br&gt;- 仅支持MySQL
@objc(CreateInstanceByTimeRequest)
public class CreateInstanceByTimeRequest:JdCloudRequest
{
    /// 根据源实例的哪个时间点创建新实例
    var restoreTime:String

    /// 新建实例规格
    var instanceSpec:RestoredNewDBInstanceSpec

    /// RDS 实例ID，唯一标识一个RDS实例
    var instanceId:String


    public init(regionId: String,restoreTime:String,instanceSpec:RestoredNewDBInstanceSpec,instanceId:String){
        self.restoreTime = restoreTime
        self.instanceSpec = instanceSpec
        self.instanceId = instanceId
        super.init(regionId: regionId)
    }


    enum CreateInstanceByTimeRequestRequestCodingKeys: String, CodingKey {
        case restoreTime
        case instanceSpec
        case instanceId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateInstanceByTimeRequestRequestCodingKeys.self)
        try encoderContainer.encode(restoreTime, forKey: .restoreTime)
        try encoderContainer.encode(instanceSpec, forKey: .instanceSpec)
        try encoderContainer.encode(instanceId, forKey: .instanceId)

    }
}
