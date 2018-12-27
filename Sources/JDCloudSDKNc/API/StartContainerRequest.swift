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

   原生容器
   原生容器相关接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  启动处于关闭状态的单个容器，处在任务执行中的容器无法启动。&lt;br&gt;
      ///       /// 容器实例或其绑定的云盘已欠费时，容器将无法正常启动。&lt;br&gt;
      ///       /// 
@objc(StartContainerRequest)
public class StartContainerRequest:JdCloudRequest
{
    /// Container ID
    var containerId:String


    public init(regionId: String,containerId:String){
        self.containerId = containerId
        super.init(regionId: regionId)
    }


    enum StartContainerRequestRequestCodingKeys: String, CodingKey {
        case containerId
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: StartContainerRequestRequestCodingKeys.self)
        try encoderContainer.encode(containerId, forKey: .containerId)

    }
}
