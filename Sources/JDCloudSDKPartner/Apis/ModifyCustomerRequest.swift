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

   客户管理
   客户管理

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  修改客户信息
public class ModifyCustomerRequest:JdCloudRequest
{
    /// 客户pin（客户账户）
    var pin:String

    /// 客户昵称
    var aliasName:String

    /// 电话
    var tel:String

    /// 邮箱
    var email:String

    /// 备注
    var remark:String?


    public init(regionId: String,pin:String,aliasName:String,tel:String,email:String){
        self.pin = pin
        self.aliasName = aliasName
        self.tel = tel
        self.email = email
        super.init(regionId: regionId)
    }


    enum ModifyCustomerRequestRequestCodingKeys: String, CodingKey {
        case pin
        case aliasName
        case tel
        case email
        case remark
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ModifyCustomerRequestRequestCodingKeys.self)
        try container.encode(pin, forKey: .pin)
        try container.encode(aliasName, forKey: .aliasName)
        try container.encode(tel, forKey: .tel)
        try container.encode(email, forKey: .email)
        try container.encode(remark, forKey: .remark)

    }
}