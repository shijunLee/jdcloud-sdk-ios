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

   云物理服务器
   云物理服务器操作相关的接口

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */


import Foundation
import JDCloudSDKCore


///  查询某种实例类型的云物理服务器支持的RAID类型，可查询系统盘RAID类型和数据盘RAID类型
@objc(DescribeDeviceRaidsRequest)
public class DescribeDeviceRaidsRequest:JdCloudRequest
{
    /// 实例类型，可调用（describeDeviceTypes）接口获取指定地域的实例类型，例如：cps.c.normal
    var deviceType:String

    /// 磁盘类型，取值范围：system、data
    var volumeType:String?


    public init(regionId: String,deviceType:String){
        self.deviceType = deviceType
        super.init(regionId: regionId)
    }


    enum DescribeDeviceRaidsRequestRequestCodingKeys: String, CodingKey {
        case deviceType
        case volumeType
    }

    public override func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: DescribeDeviceRaidsRequestRequestCodingKeys.self)
        try encoderContainer.encode(deviceType, forKey: .deviceType)
        try encoderContainer.encode(volumeType, forKey: .volumeType)

    }
}
