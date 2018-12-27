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

///  putBody
@objc(PutBody)
public class PutBody:NSObject,Codable{
    /// 目前统一用jcloud
    /// Required:true
    var appCode:String
    /// 资源的类型，取值vm,ip,database,storage,disk,cdn,redis,balance,nat_gw,db_ro,vpn,ddos等,新接入的产品要求与opentapi命名的产品线名称一致
    /// Required:true
    var serviceCode:String
    /// 地域信息，如 cn-north-1 等
    /// Required:true
    var region:String
    /// 资源的唯一表示，一般为uuid
    /// Required:true
    var resourceId:String
    /// 监控数据点
    /// Required:true
    var dataPoints:DataPointX?



    public  init(appCode:String,serviceCode:String,region:String,resourceId:String,dataPoints:DataPointX?){
             self.appCode = appCode
             self.serviceCode = serviceCode
             self.region = region
             self.resourceId = resourceId
             self.dataPoints = dataPoints
    }

    enum PutBodyCodingKeys: String, CodingKey {
        case appCode
        case serviceCode
        case region
        case resourceId
        case dataPoints
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: PutBodyCodingKeys.self)
        self.appCode = try decoderContainer.decode(String.self, forKey: .appCode)
        self.serviceCode = try decoderContainer.decode(String.self, forKey: .serviceCode)
        self.region = try decoderContainer.decode(String.self, forKey: .region)
        self.resourceId = try decoderContainer.decode(String.self, forKey: .resourceId)
        self.dataPoints = try decoderContainer.decode(DataPointX?.self, forKey: .dataPoints)
    }
}
public extension PutBody{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: PutBodyCodingKeys.self)
         try encoderContainer.encode(appCode, forKey: .appCode)
         try encoderContainer.encode(serviceCode, forKey: .serviceCode)
         try encoderContainer.encode(region, forKey: .region)
         try encoderContainer.encode(resourceId, forKey: .resourceId)
         try encoderContainer.encode(dataPoints, forKey: .dataPoints)
    }
}