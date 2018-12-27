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

   单库上云
   单库上云相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取用户通过单库上云工具上传到该实例上的文件列表&lt;br&gt;- 仅支持SQL Server
@objc(DescribeImportFilesResult)
public class DescribeImportFilesResult:NSObject,JdCloudResult
{
    /// ImportFiles
    var importFiles:ImportFile?



    public override init(){
        super.init()
    }

    enum DescribeImportFilesResultCodingKeys: String, CodingKey {
        case importFiles
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeImportFilesResultCodingKeys.self)
        self.importFiles = try decoderContainer.decode(ImportFile?.self, forKey: .importFiles)
    }
}
public extension DescribeImportFilesResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeImportFilesResultCodingKeys.self)
        try encoderContainer.encode(importFiles, forKey: .importFiles)
    }
}
