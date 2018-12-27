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

///  orderPriceDetail
@objc(OrderPriceDetail)
public class OrderPriceDetail:NSObject,Codable{
    /// 折扣前总价
    var price:Double?
    /// 四位小数价格
    var priceScale4:Double?
    /// 折扣金额
    var discount:Double?
    /// 折扣后订单金额
    var discountedPrice:Double?
    /// 订单原价 包年时 一年原价为12个月价格，totalPrice为10个月价格
    var originalPrice:Double?
    /// 资源id
    var resourceId:String?
    /// 业务线
    var appCode:String?
    /// 产品线
    var serviceCode:String?
    /// 站点  0:主站  其他:专有云
    var site:Int?
    /// 地域
    var region:String?
    /// 计费类型1:按配置2:按用量3:包年包月
    var billingType:Int?
    /// 时长
    var timeSpan:Int?
    /// 时长类型 1:小时2:天3:月4:年
    var timeUnit:Int?
    /// 网络类型 0:non1:非BGP2:BGP
    var networkOperator:Int?
    /// 配置信息
    var formula:Formula?
    /// FavorableInfo转成json后的字符串
    var favorableInfo:String?
    /// 价格快照
    var priceSnapShot:String?
    /// 用户pin
    var pin:String?
    /// 自然单列表
    var taskId:String?
    /// 开始时间
    var startTime:String?
    /// 结束时间
    var endTime:String?
    /// 变配明细（1-升配补差价，2-降配延时）
    var processType:Int?
    /// 交易单模块sourceId
    var sourceId:String?



    public override init(){
            super.init()
    }

    enum OrderPriceDetailCodingKeys: String, CodingKey {
        case price
        case priceScale4
        case discount
        case discountedPrice
        case originalPrice
        case resourceId
        case appCode
        case serviceCode
        case site
        case region
        case billingType
        case timeSpan
        case timeUnit
        case networkOperator
        case formula
        case favorableInfo
        case priceSnapShot
        case pin
        case taskId
        case startTime
        case endTime
        case processType
        case sourceId
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderPriceDetailCodingKeys.self)
        self.price = try decoderContainer.decode(Double?.self, forKey: .price)
        self.priceScale4 = try decoderContainer.decode(Double?.self, forKey: .priceScale4)
        self.discount = try decoderContainer.decode(Double?.self, forKey: .discount)
        self.discountedPrice = try decoderContainer.decode(Double?.self, forKey: .discountedPrice)
        self.originalPrice = try decoderContainer.decode(Double?.self, forKey: .originalPrice)
        self.resourceId = try decoderContainer.decode(String?.self, forKey: .resourceId)
        self.appCode = try decoderContainer.decode(String?.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String?.self, forKey: .serviceCode)
        self.site = try decoderContainer.decode(Int?.self, forKey: .site)
        self.region = try decoderContainer.decode(String?.self, forKey: .region)
        self.billingType = try decoderContainer.decode(Int?.self, forKey: .billingType)
        self.timeSpan = try decoderContainer.decode(Int?.self, forKey: .timeSpan)
        self.timeUnit = try decoderContainer.decode(Int?.self, forKey: .timeUnit)
        self.networkOperator = try decoderContainer.decode(Int?.self, forKey: .networkOperator)
        self.formula = try decoderContainer.decode(Formula?.self, forKey: .formula)
        self.favorableInfo = try decoderContainer.decode(String?.self, forKey: .favorableInfo)
        self.priceSnapShot = try decoderContainer.decode(String?.self, forKey: .priceSnapShot)
        self.pin = try decoderContainer.decode(String?.self, forKey: .pin)
        self.taskId = try decoderContainer.decode(String?.self, forKey: .taskId)
        self.startTime = try decoderContainer.decode(String?.self, forKey: .startTime)
        self.endTime = try decoderContainer.decode(String?.self, forKey: .endTime)
        self.processType = try decoderContainer.decode(Int?.self, forKey: .processType)
        self.sourceId = try decoderContainer.decode(String?.self, forKey: .sourceId)
    }
}
public extension OrderPriceDetail{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderPriceDetailCodingKeys.self)
         try encoderContainer.encode(price, forKey: .price)
         try encoderContainer.encode(priceScale4, forKey: .priceScale4)
         try encoderContainer.encode(discount, forKey: .discount)
         try encoderContainer.encode(discountedPrice, forKey: .discountedPrice)
         try encoderContainer.encode(originalPrice, forKey: .originalPrice)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(site, forKey: .site)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(billingType, forKey: .billingType)
         try encoderContainer.encode(timeSpan, forKey: .timeSpan)
         try encoderContainer.encode(timeUnit, forKey: .timeUnit)
         try encoderContainer.encode(networkOperator, forKey: .networkOperator)
         try encoderContainer.encode(formula, forKey: .formula)
         try encoderContainer.encode(favorableInfo, forKey: .favorableInfo)
         try encoderContainer.encode(priceSnapShot, forKey: .priceSnapShot)
         try encoderContainer.encode(pin, forKey: .pin)
         try encoderContainer.encode(taskId, forKey: .taskId)
         try encoderContainer.encode(startTime, forKey: .startTime)
         try encoderContainer.encode(endTime, forKey: .endTime)
         try encoderContainer.encode(processType, forKey: .processType)
         try encoderContainer.encode(sourceId, forKey: .sourceId)
    }
}