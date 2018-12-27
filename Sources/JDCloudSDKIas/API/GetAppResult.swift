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

   JDCLOUD IAS Services API
   京东云联合登陆Api

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取应用
@objc(GetAppResult)
public class GetAppResult:NSObject,JdCloudResult
{
    /// 应用ID，由京东云分配的16位数字ID
    var clientId:String?

    /// 应用名
    var clientName:String?

    /// 客户端认证方式
    var tokenEndpointAuthMethod:String?

    /// 支持的OAuth类型
    var grantTypes:String?

    /// 当grantTypes为authorization_code时，responseTypes为code；当grantTypes为implicit时，responseTypes为token
    var responseTypes:String?

    /// 回调地址
    var redirectUris:String?

    /// 应用介绍地址
    var clientUri:String?

    /// 应用logo地址
    var logoUri:String?

    /// 应用服务协议地址
    var tosUri:String?

    /// 应用隐私条款地址
    var policyUri:String?

    /// OAuth scope授权范围
    var scope:String?

    /// JWKS地址
    var jwksUri:String?

    /// JWKS
    var jwks:String?

    /// 应用联系信息
    var contacts:String?

    /// 应用扩展信息
    var extensionValue:String?

    /// 访问令牌有效期
    var accessTokenValiditySeconds:Int?

    /// 刷新令牌有效期
    var refreshTokenValiditySeconds:Int?

    /// 是否为多租户应用
    var multiTenant:Bool?

    /// 应用密码更新时间
    var secretUpdateTime:Int64?

    /// 应用更新时间
    var updateTime:Int64?

    /// 应用创建时间
    var createTime:Int64?

    /// 创建应用的账户用户名
    var account:String?

    /// 允许登录应用的账号类型
    var userType:String?



    public override init(){
        super.init()
    }

    enum GetAppResultCodingKeys: String, CodingKey {
        case clientId
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
        case responseTypes
        case redirectUris
        case clientUri
        case logoUri
        case tosUri
        case policyUri
        case scope
        case jwksUri
        case jwks
        case contacts
        case extensionValue = "extension"
        case accessTokenValiditySeconds
        case refreshTokenValiditySeconds
        case multiTenant
        case secretUpdateTime
        case updateTime
        case createTime
        case account
        case userType
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetAppResultCodingKeys.self)
        self.clientId = try decoderContainer.decode(String?.self, forKey: .clientId)
        self.clientName = try decoderContainer.decode(String?.self, forKey: .clientName)
        self.tokenEndpointAuthMethod = try decoderContainer.decode(String?.self, forKey: .tokenEndpointAuthMethod)
        self.grantTypes = try decoderContainer.decode(String?.self, forKey: .grantTypes)
        self.responseTypes = try decoderContainer.decode(String?.self, forKey: .responseTypes)
        self.redirectUris = try decoderContainer.decode(String?.self, forKey: .redirectUris)
        self.clientUri = try decoderContainer.decode(String?.self, forKey: .clientUri)
        self.logoUri = try decoderContainer.decode(String?.self, forKey: .logoUri)
        self.tosUri = try decoderContainer.decode(String?.self, forKey: .tosUri)
        self.policyUri = try decoderContainer.decode(String?.self, forKey: .policyUri)
        self.scope = try decoderContainer.decode(String?.self, forKey: .scope)
        self.jwksUri = try decoderContainer.decode(String?.self, forKey: .jwksUri)
        self.jwks = try decoderContainer.decode(String?.self, forKey: .jwks)
        self.contacts = try decoderContainer.decode(String?.self, forKey: .contacts)
        self.extensionValue = try decoderContainer.decode(String?.self, forKey: .extensionValue)
        self.accessTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .accessTokenValiditySeconds)
        self.refreshTokenValiditySeconds = try decoderContainer.decode(Int?.self, forKey: .refreshTokenValiditySeconds)
        self.multiTenant = try decoderContainer.decode(Bool?.self, forKey: .multiTenant)
        self.secretUpdateTime = try decoderContainer.decode(Int64?.self, forKey: .secretUpdateTime)
        self.updateTime = try decoderContainer.decode(Int64?.self, forKey: .updateTime)
        self.createTime = try decoderContainer.decode(Int64?.self, forKey: .createTime)
        self.account = try decoderContainer.decode(String?.self, forKey: .account)
        self.userType = try decoderContainer.decode(String?.self, forKey: .userType)
    }
}
public extension GetAppResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAppResultCodingKeys.self)
        try encoderContainer.encode(clientId, forKey: .clientId)
        try encoderContainer.encode(clientName, forKey: .clientName)
        try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
        try encoderContainer.encode(grantTypes, forKey: .grantTypes)
        try encoderContainer.encode(responseTypes, forKey: .responseTypes)
        try encoderContainer.encode(redirectUris, forKey: .redirectUris)
        try encoderContainer.encode(clientUri, forKey: .clientUri)
        try encoderContainer.encode(logoUri, forKey: .logoUri)
        try encoderContainer.encode(tosUri, forKey: .tosUri)
        try encoderContainer.encode(policyUri, forKey: .policyUri)
        try encoderContainer.encode(scope, forKey: .scope)
        try encoderContainer.encode(jwksUri, forKey: .jwksUri)
        try encoderContainer.encode(jwks, forKey: .jwks)
        try encoderContainer.encode(contacts, forKey: .contacts)
        try encoderContainer.encode(extensionValue, forKey: .extensionValue)
        try encoderContainer.encode(accessTokenValiditySeconds, forKey: .accessTokenValiditySeconds)
        try encoderContainer.encode(refreshTokenValiditySeconds, forKey: .refreshTokenValiditySeconds)
        try encoderContainer.encode(multiTenant, forKey: .multiTenant)
        try encoderContainer.encode(secretUpdateTime, forKey: .secretUpdateTime)
        try encoderContainer.encode(updateTime, forKey: .updateTime)
        try encoderContainer.encode(createTime, forKey: .createTime)
        try encoderContainer.encode(account, forKey: .account)
        try encoderContainer.encode(userType, forKey: .userType)
    }
}
