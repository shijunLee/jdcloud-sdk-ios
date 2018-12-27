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

///  routeTableSpec
@objc(RouteTableSpec)
public class RouteTableSpec:NSObject,Codable{
    /// 路由表所属的私有网络ID
    /// Required:true
    var vpcId:String
    /// 路由表名称，只允许输入中文、数字、大小写字母、英文下划线“_”及中划线“-”，不允许为空且不超过32字符。
    /// Required:true
    var routeTableName:String
    /// 描述,​ 允许输入UTF-8编码下的全部字符，不超过256字符
    var descriptionValue:String?



    public  init(vpcId:String,routeTableName:String){
             self.vpcId = vpcId
             self.routeTableName = routeTableName
    }

    enum RouteTableSpecCodingKeys: String, CodingKey {
        case vpcId
        case routeTableName
        case descriptionValue = "description"
    }


    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: RouteTableSpecCodingKeys.self)
        self.vpcId = try decoderContainer.decode(String.self, forKey: .vpcId)
        self.routeTableName = try decoderContainer.decode(String.self, forKey: .routeTableName)
        self.descriptionValue = try decoderContainer.decode(String?.self, forKey: .descriptionValue)
    }
}
public extension RouteTableSpec{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: RouteTableSpecCodingKeys.self)
         try encoderContainer.encode(vpcId, forKey: .vpcId)
         try encoderContainer.encode(routeTableName, forKey: .routeTableName)
         try encoderContainer.encode(descriptionValue, forKey: .descriptionValue)
    }
}