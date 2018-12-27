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

   JDCLOUD BILLING PRICE Services API
   用户中心消费管理查询API接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询计费价格信息
@objc(CalculateTotalPriceRequest)
public class CalculateTotalPriceRequest:JdCloudRequest
{
    /// 操作类型 1:创建 2:续费 3:升配 4:删除
    var cmd:Int

    /// 计算价格的订单
    var orderList:OrderPriceProtocol?

    /// 操作时间，遵循ISO8601标准，使用UTC时间，格式为：YYYY-MM-DDTHH:mm:ssZ
    var operateTime:String?

    /// 1:折扣（不需要传） 2:免费活动3:付费活动 4:推荐码 5:会员价 [{&quot;promotionType&quot;:1,&quot;activityCode&quot;:123},{&quot;promotionType&quot;:2,&quot;activityCode&quot;:}]
    var promotionInfo:String?

    /// 客户端：1.PC端；2.移动端；
    var clientType:Int?

    /// 批量购买时数量
    var packageCount:Int


    public init(regionId: String,cmd:Int,packageCount:Int){
        self.cmd = cmd
        self.packageCount = packageCount
        super.init(regionId: regionId)
    }


    enum CalculateTotalPriceRequestRequestCodingKeys: String, CodingKey {
        case cmd
        case orderList
        case operateTime
        case promotionInfo
        case clientType
        case packageCount
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CalculateTotalPriceRequestRequestCodingKeys.self)
        try encoderContainer.encode(cmd, forKey: .cmd)
        try encoderContainer.encode(orderList, forKey: .orderList)
        try encoderContainer.encode(operateTime, forKey: .operateTime)
        try encoderContainer.encode(promotionInfo, forKey: .promotionInfo)
        try encoderContainer.encode(clientType, forKey: .clientType)
        try encoderContainer.encode(packageCount, forKey: .packageCount)

    }
}
