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

   CustomMetric APIs
   自定义监控相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  删除自定义监控规则
@objc(DeleteAlarmsCmRequest)
public class DeleteAlarmsCmRequest:JdCloudRequest
{
    /// ids,多个id用|分隔
    var ids:String


    public init(regionId: String,ids:String){
        self.ids = ids
        super.init(regionId: regionId)
    }


    enum DeleteAlarmsCmRequestRequestCodingKeys: String, CodingKey {
        case ids
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DeleteAlarmsCmRequestRequestCodingKeys.self)
        try encoderContainer.encode(ids, forKey: .ids)

    }
}