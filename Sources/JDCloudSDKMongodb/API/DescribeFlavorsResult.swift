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

   实例管理
   API related to MONGODB instances

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore

/// 获取规格
@objc(DescribeFlavorsResult)
public class DescribeFlavorsResult:NSObject,JdCloudResult
{
    /// Flavors
    var flavors:Flavor?



    public override init(){
        super.init()
    }

    enum DescribeFlavorsResultCodingKeys: String, CodingKey {
        case flavors
    }

    required public init(from decoder: Decoder) throws {
        let decoderContainer = try decoder.container(keyedBy: DescribeFlavorsResultCodingKeys.self)
        self.flavors = try decoderContainer.decode(Flavor?.self, forKey: .flavors)
    }
}
public extension DescribeFlavorsResult{
    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeFlavorsResultCodingKeys.self)
        try encoderContainer.encode(flavors, forKey: .flavors)
    }
}
