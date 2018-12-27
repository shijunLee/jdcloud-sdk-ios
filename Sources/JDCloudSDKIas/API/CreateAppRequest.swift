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


///  创建应用
@objc(CreateAppRequest)
public class CreateAppRequest:JdCloudRequest
{
    /// 应用名
    var clientName:String?

    /// 客户端认证方式&lt;br&gt; - none：不设置客户端密码（不推荐）&lt;br&gt; - client_secret_post：客户端必须设置密码，且该密码需要在OAuth2 Token Endpoint提供于请求的body&lt;br&gt; - client_secret_basic：客户端必须设置密码，且该密码需要在OAuth2 Token Endpoint提供于请求的header&lt;br&gt; 支持以下值：&lt;br&gt; （1）none&lt;br&gt; （2）client_secret_post&lt;br&gt; （3）client_secret_basic
    var tokenEndpointAuthMethod:String?

    /// 支持的OAuth类型：&lt;br&gt; - authorization_code：OAuth2授权码模式&lt;br&gt; - implicit：OAuth2隐式授权模式&lt;br&gt; - refresh_token：启用刷新令牌 支持以下值：&lt;br&gt; （1）authorization_code&lt;br&gt; （2）authorization_code,refresh_token&lt;br&gt; （3）authorization_code,implicit&lt;br&gt; （4）authorization_code,implicit,refresh_token&lt;br&gt; （5）implicit&lt;br&gt; 注：如果grantTypes指定了refresh_token，应用将可以使用刷新令牌；如果在创建应用时未指定，则应用不能使用刷新令牌；任何时候应用都可以调用“更新应用”接口更改grantTypes设置
    var grantTypes:String?

    /// 回调地址，最多4个，多个url之间用逗号,分隔，每个url长度不超过1000，url不支持#符号
    var redirectUris:String?

    /// 应用介绍地址，url不支持#符号
    var clientUri:String?

    /// 应用logo地址，url不支持#符号
    var logoUri:String?

    /// 应用服务协议地址，url不支持#符号
    var tosUri:String?

    /// 应用隐私政策地址，url不支持#符号
    var policyUri:String?

    /// OAuth scope范围，支持的值为：&lt;br/&gt; （1）openid：用OpenID Connect协议进行身份认证&lt;br/&gt; 指定scope为openid，并在Authorization Endpoint请求该scope，京东云将返回用户的OpenID令牌；如果在创建应用时未指明该值，则应用不能请求OpenID令牌；任何时候应用都可以调用“更新应用”更改该设置
    var scope:String?

    /// JWKS地址，url不支持#符号&lt;br/&gt;jwksUri和jwks传一个即可
    var jwksUri:String?

    /// JWKS
    var jwks:String?

    /// 应用联系信息
    var contacts:String?

    /// 应用扩展信息
    var extensionValue:String?

    /// 访问令牌有效期，值的范围为 600 秒到 6x3600&#x3D;21,600 秒，即10分钟-6小时
    var accessTokenValiditySeconds:Int?

    /// 刷新令牌有效期，值的范围为 30x24x3600&#x3D;2,592,000 秒到 365x24x3600&#x3D;31,536,000 秒，即30天-365天&lt;br/&gt;&lt;br/&gt; 注：当 GrantTypes 包含 refresh_token 时，refreshTokenValiditySeconds 为必传参数
    var refreshTokenValiditySeconds:Int?

    /// 是否为多租户应用&lt;br/&gt; &quot;false&quot;：该应用仅支持当前创建应用的租户访问，其他京东云租户无法访问&lt;br/&gt;        &quot;true&quot;：该应用支持其他京东云租户访问，但当前创建应用的租户不能访问
    var multiTenant:Bool?

    /// 应用的密码，支持8-255位长度的ASCII可打印字符，建议使用足够复杂的密码策略&lt;br/&gt;&lt;br/&gt;        注：当TokenEndpointAuthMethod不等于none时，secret为必传参数；反之，当指定了secret时，TokenEndpointAuthMethod不能等于none&lt;br/&gt;京东云将不可逆加密secret，因此您无法再次从京东云查看该密码，但您可以随时通过更新应用重新设置secret
    var secret:String?

    /// 能访问应用的账号类型，支持以下值：&lt;br/&gt; （1）root：支持主账号访问，子用户无法访问&lt;br/&gt; （2）sub：子用户账号，使用主账号不能访问&lt;br/&gt;&lt;br/&gt; 注：multiTenant和userType的组合指定了应用的用户人群，典型的应用场景如：&lt;br/&gt; （1）应用向当前租户下的子用户开放（2）应用向京东云其他租户主账号开放
    var userType:String?




    enum CreateAppRequestRequestCodingKeys: String, CodingKey {
        case clientName
        case tokenEndpointAuthMethod
        case grantTypes
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
        case secret
        case userType
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CreateAppRequestRequestCodingKeys.self)
        try encoderContainer.encode(clientName, forKey: .clientName)
        try encoderContainer.encode(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
        try encoderContainer.encode(grantTypes, forKey: .grantTypes)
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
        try encoderContainer.encode(secret, forKey: .secret)
        try encoderContainer.encode(userType, forKey: .userType)

    }
}
