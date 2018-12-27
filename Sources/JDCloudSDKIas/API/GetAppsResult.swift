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

/// 获取账户下所有应用
@objc(GetAppsResult)
public class GetAppsResult:NSObject,JdCloudResult
{
    /// Apps
    var apps:ApplicationRes?



    public override init(){
        super.init()
    }

    enum GetAppsResultCodingKeys: String, CodingKey {
        case apps
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: GetAppsResultCodingKeys.self)
        self.apps = try decoderContainer.decode(ApplicationRes?.self, forKey: .apps)
    }
}
public extension GetAppsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: GetAppsResultCodingKeys.self)
        try encoderContainer.encode(apps, forKey: .apps)
    }
}
