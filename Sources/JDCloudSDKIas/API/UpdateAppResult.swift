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

/// 更新应用（只传需要变更的参数，不传的参数不会更新）
@objc(UpdateAppResult)
public class UpdateAppResult:NSObject,JdCloudResult
{
    /// 应用ID，由京东云分配的16位数字ID
    var clientId:String?

    /// clientName参数值
    var clientName:String?

    /// tokenEndpointAuthMethod参数值
    var tokenEndpointAuthMethod:String?

    /// grantTypes参数值
    var grantTypes:String?

    /// 当grantTypes为authorization_code时，responseTypes为code；当grantTypes为implicit时，responseTypes为token
    var responseTypes:String?

    /// redirectUris参数值
    var redirectUris:String?

    /// clientUri参数值
    var clientUri:String?

    /// logoUri参数值
    var logoUri:String?

    /// tosUri参数值
    var tosUri:String?

    /// policyUri参数值
    var policyUri:String?

    /// scope参数值
    var scope:String?

    /// jwksUri参数值
    var jwksUri:String?

    /// jwks参数值
    var jwks:String?

    /// contacts参数值
    var contacts:String?

    /// extension参数值
    var extensionValue:String?

    /// accessTokenValiditySeconds参数值
    var accessTokenValiditySeconds:Int?

    /// refreshTokenValiditySeconds参数值
    var refreshTokenValiditySeconds:Int?

    /// multiTenant参数值
    var multiTenant:Bool?

    /// secretUpdateTime参数值
    var secretUpdateTime:Int64?

    /// updateTime参数值
    var updateTime:Int64?

    /// createTime参数值
    var createTime:Int64?

    /// 创建应用的账户用户名
    var account:String?

    /// userType参数值
    var userType:String?



    public override init(){
        super.init()
    }

    enum UpdateAppResultCodingKeys: String, CodingKey {
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
        let decoderContainer = try decoder.container(keyedBy: UpdateAppResultCodingKeys.self)
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
public extension UpdateAppResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: UpdateAppResultCodingKeys.self)
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
