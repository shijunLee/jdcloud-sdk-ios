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

///  订单状态
@objc(OrderStatus)
public class OrderStatus:NSObject,Codable{
    /// 订单总数
    var total:Int?
    /// 成功数
    var success:Int?
    /// 失败数
    var fail:Int?
    /// 正在处理数
    var inProcess:Int?
    /// 成功的资源Id
    var resourceIds:[String?]?



    public override init(){
            super.init()
    }

    enum OrderStatusCodingKeys: String, CodingKey {
        case total
        case success
        case fail
        case inProcess
        case resourceIds
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: OrderStatusCodingKeys.self)
        self.total = try decoderContainer.decode(Int?.self, forKey: .total)
        self.success = try decoderContainer.decode(Int?.self, forKey: .success)
        self.fail = try decoderContainer.decode(Int?.self, forKey: .fail)
        self.inProcess = try decoderContainer.decode(Int?.self, forKey: .inProcess)
        self.resourceIds = try decoderContainer.decode([String?]?.self, forKey: .resourceIds)
    }
}
public extension OrderStatus{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: OrderStatusCodingKeys.self)
         try encoderContainer.encode(total, forKey: .total)
         try encoderContainer.encode(success, forKey: .success)
         try encoderContainer.encode(fail, forKey: .fail)
         try encoderContainer.encode(inProcess, forKey: .inProcess)
         try encoderContainer.encode(resourceIds, forKey: .resourceIds)
    }
}
