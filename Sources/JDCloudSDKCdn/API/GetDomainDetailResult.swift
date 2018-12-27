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

   JCloud Openapi For CDN
   Openapi For JCLOUD cdn

   OpenAPI spec version: v1
   Contact: pid-cdn@jd.com

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 查询加速域名详情
@objc(GetDomainDetailResult)
public class GetDomainDetailResult:NSObject,JdCloudResult
{
    /// Domain
    var domain:String?

    /// Cname
    var cname:String?

    /// ArchiveNo
    var archiveNo:String?

    /// Type
    var type:String?

    /// Created
    var created:String?

    /// Modified
    var modified:String?

    /// Status
    var status:String?

    /// AuditStatus
    var auditStatus:String?

    /// Source
    var source:String?

    /// SourceType
    var sourceType:String?

    /// BackSourceType
    var backSourceType:String?

    /// HttpType
    var httpType:String?

    /// Certificate
    var certificate:String?

    /// RsaKey
    var rsaKey:String?

    /// JumpType
    var jumpType:String?



    public override init(){
        super.init()
    }

    enum GetDomainDetailResultCodingKeys: String, CodingKey {
        case domain
        case cname
        case archiveNo
        case type
        case created
        case modified
        case status
        case auditStatus
        case source
        case sourceType
        case backSourceType
        case httpType
        case certificate
        case rsaKey
        case jumpType
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetDomainDetailResultCodingKeys.self)
        self.domain = try decoderContainer.decode(String?.self, forKey: .domain)
        self.cname = try decoderContainer.decode(String?.self, forKey: .cname)
        self.archiveNo = try decoderContainer.decode(String?.self, forKey: .archiveNo)
        self.type = try decoderContainer.decode(String?.self, forKey: .type)
        self.created = try decoderContainer.decode(String?.self, forKey: .created)
        self.modified = try decoderContainer.decode(String?.self, forKey: .modified)
        self.status = try decoderContainer.decode(String?.self, forKey: .status)
        self.auditStatus = try decoderContainer.decode(String?.self, forKey: .auditStatus)
        self.source = try decoderContainer.decode(String?.self, forKey: .source)
        self.sourceType = try decoderContainer.decode(String?.self, forKey: .sourceType)
        self.backSourceType = try decoderContainer.decode(String?.self, forKey: .backSourceType)
        self.httpType = try decoderContainer.decode(String?.self, forKey: .httpType)
        self.certificate = try decoderContainer.decode(String?.self, forKey: .certificate)
        self.rsaKey = try decoderContainer.decode(String?.self, forKey: .rsaKey)
        self.jumpType = try decoderContainer.decode(String?.self, forKey: .jumpType)
    }
}
public extension GetDomainDetailResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetDomainDetailResultCodingKeys.self)
        try encoderContainer.encode(domain, forKey: .domain)
        try encoderContainer.encode(cname, forKey: .cname)
        try encoderContainer.encode(archiveNo, forKey: .archiveNo)
        try encoderContainer.encode(type, forKey: .type)
        try encoderContainer.encode(created, forKey: .created)
        try encoderContainer.encode(modified, forKey: .modified)
        try encoderContainer.encode(status, forKey: .status)
        try encoderContainer.encode(auditStatus, forKey: .auditStatus)
        try encoderContainer.encode(source, forKey: .source)
        try encoderContainer.encode(sourceType, forKey: .sourceType)
        try encoderContainer.encode(backSourceType, forKey: .backSourceType)
        try encoderContainer.encode(httpType, forKey: .httpType)
        try encoderContainer.encode(certificate, forKey: .certificate)
        try encoderContainer.encode(rsaKey, forKey: .rsaKey)
        try encoderContainer.encode(jumpType, forKey: .jumpType)
    }
}
