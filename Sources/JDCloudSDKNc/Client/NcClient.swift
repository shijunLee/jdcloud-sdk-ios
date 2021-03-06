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
@objc(NcJDCloudClient)
public class NcJDCloudClient:NSObject,JDCloudClient{
    
    private final var ncJDCloudClient:NcJDCloudClient!


    @objc public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        ncJDCloudClient = self
    }


    @objc public override init() {

        if(GlobalConfig.credential == nil)
        {
            GlobalConfig.credential = Credential(accessKeyId: "",secretAccessKey: "")
        }
        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "nc.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        ncJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "nc" + "v1"
    
    public let serviceName: String = "nc"
    
    public let version: String = "0.0.1"
    
    public let contentType:String = "application/json"
    
    public var credential: Credential
    
    public var sdkEnvironment: SDKEnvironment
    
    public var customHeader: [String : String] = [String:String]()

    @objc public var httpRequestProtocol: String = "https"

    @objc public func addCustomer(key: String, value: String) {
        customHeader[key] = value
    }



    @objc
    public func associateElasticIpAsync(request:AssociateElasticIpRequest,requestComplation:@escaping (NSNumber?,AssociateElasticIpResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try AssociateElasticIpExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(AssociateElasticIpResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeSecretAsync(request:DescribeSecretRequest,requestComplation:@escaping (NSNumber?,DescribeSecretResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DescribeSecretExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeSecretResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func createSecretAsync(request:CreateSecretRequest,requestComplation:@escaping (NSNumber?,CreateSecretResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try CreateSecretExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(CreateSecretResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func modifyContainerAttributeAsync(request:ModifyContainerAttributeRequest,requestComplation:@escaping (NSNumber?,ModifyContainerAttributeResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try ModifyContainerAttributeExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(ModifyContainerAttributeResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func deleteSecretAsync(request:DeleteSecretRequest,requestComplation:@escaping (NSNumber?,DeleteSecretResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DeleteSecretExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DeleteSecretResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func disassociateElasticIpAsync(request:DisassociateElasticIpRequest,requestComplation:@escaping (NSNumber?,DisassociateElasticIpResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DisassociateElasticIpExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DisassociateElasticIpResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func deleteContainerAsync(request:DeleteContainerRequest,requestComplation:@escaping (NSNumber?,DeleteContainerResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DeleteContainerExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DeleteContainerResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeContainerAsync(request:DescribeContainerRequest,requestComplation:@escaping (NSNumber?,DescribeContainerResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DescribeContainerExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeContainerResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func startContainerAsync(request:StartContainerRequest,requestComplation:@escaping (NSNumber?,StartContainerResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try StartContainerExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(StartContainerResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeContainersAsync(request:DescribeContainersRequest,requestComplation:@escaping (NSNumber?,DescribeContainersResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DescribeContainersExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeContainersResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func getLogsAsync(request:GetLogsRequest,requestComplation:@escaping (NSNumber?,GetLogsResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try GetLogsExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(GetLogsResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeQuotaAsync(request:DescribeQuotaRequest,requestComplation:@escaping (NSNumber?,DescribeQuotaResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DescribeQuotaExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeQuotaResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func createContainersAsync(request:CreateContainersRequest,requestComplation:@escaping (NSNumber?,CreateContainersResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try CreateContainersExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(CreateContainersResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func stopContainerAsync(request:StopContainerRequest,requestComplation:@escaping (NSNumber?,StopContainerResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try StopContainerExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(StopContainerResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }


    @objc
    public func describeSecretsAsync(request:DescribeSecretsRequest,requestComplation:@escaping (NSNumber?,DescribeSecretsResponse?,NSError?,NSString?)->()) throws {
        ncJDCloudClient = self
        try DescribeSecretsExecutor(jdCloudClient: ncJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DescribeSecretsResponse.self, from: responseData!)
                    requestComplation(statusCode as NSNumber?,result,sdkRequestError as NSError? ,resultString as NSString?)
                }catch{
                    requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
                }
            }else{
                requestComplation(statusCode as NSNumber?, nil,sdkRequestError as NSError?,resultString as NSString?)
            }

        }
    }

    
}


public extension NcJDCloudClient{

    @objc public convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "nc.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
