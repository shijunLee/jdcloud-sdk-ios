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

   JDCLOUD CDN Operation And Query API
   API related to CDN instances

   OpenAPI spec version: v1
   Contact: 

   NOTE: This class is auto generated by the jdcloud code generator program.
 */



import Foundation
import JDCloudSDKCore
@objc(CdnJDCloudClient)
public class CdnJDCloudClient:NSObject,JDCloudClient{
    
    private final var cdnJDCloudClient:CdnJDCloudClient!


    @objc public convenience init(credential:Credential,sdkEnvironment:SDKEnvironment) {
        self.init()
        self.credential = credential
        self.sdkEnvironment = sdkEnvironment
        cdnJDCloudClient = self
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
            sdkEnvironment = SDKEnvironment(endPoint: "cdn.jdcloud-api.com");
        }
        self.credential = GlobalConfig.credential!
        self.sdkEnvironment = sdkEnvironment
        super.init()
        cdnJDCloudClient = self
    }
    
    public let userAgent: String = "JdcloudSdkSwift" + "0.0.1" + "cdn" + "v1"
    
    public let serviceName: String = "cdn"
    
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
    public func queryStatisticsDataGroupByAreaAsync(request:QueryStatisticsDataGroupByAreaRequest,requestComplation:@escaping (NSNumber?,QueryStatisticsDataGroupByAreaResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try QueryStatisticsDataGroupByAreaExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(QueryStatisticsDataGroupByAreaResponse.self, from: responseData!)
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
    public func getDomainListAsync(request:GetDomainListRequest,requestComplation:@escaping (NSNumber?,GetDomainListResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try GetDomainListExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(GetDomainListResponse.self, from: responseData!)
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
    public func stopDomainAsync(request:StopDomainRequest,requestComplation:@escaping (NSNumber?,StopDomainResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try StopDomainExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(StopDomainResponse.self, from: responseData!)
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
    public func getDomainDetailAsync(request:GetDomainDetailRequest,requestComplation:@escaping (NSNumber?,GetDomainDetailResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try GetDomainDetailExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(GetDomainDetailResponse.self, from: responseData!)
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
    public func deleteDomainAsync(request:DeleteDomainRequest,requestComplation:@escaping (NSNumber?,DeleteDomainResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try DeleteDomainExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(DeleteDomainResponse.self, from: responseData!)
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
    public func queryStatisticsTopIpAsync(request:QueryStatisticsTopIpRequest,requestComplation:@escaping (NSNumber?,QueryStatisticsTopIpResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try QueryStatisticsTopIpExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(QueryStatisticsTopIpResponse.self, from: responseData!)
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
    public func queryStatisticsTopUrlAsync(request:QueryStatisticsTopUrlRequest,requestComplation:@escaping (NSNumber?,QueryStatisticsTopUrlResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try QueryStatisticsTopUrlExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(QueryStatisticsTopUrlResponse.self, from: responseData!)
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
    public func queryStatisticsDataGroupSumAsync(request:QueryStatisticsDataGroupSumRequest,requestComplation:@escaping (NSNumber?,QueryStatisticsDataGroupSumResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try QueryStatisticsDataGroupSumExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(QueryStatisticsDataGroupSumResponse.self, from: responseData!)
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
    public func startDomainAsync(request:StartDomainRequest,requestComplation:@escaping (NSNumber?,StartDomainResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try StartDomainExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(StartDomainResponse.self, from: responseData!)
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
    public func queryStatisticsDataAsync(request:QueryStatisticsDataRequest,requestComplation:@escaping (NSNumber?,QueryStatisticsDataResponse?,NSError?,NSString?)->()) throws {
        cdnJDCloudClient = self
        try QueryStatisticsDataExecutor(jdCloudClient: cdnJDCloudClient).executeAsync(request: request) { (statusCode,sdkRequestError,resultString) in
            if( resultString != nil )
            {
                do{
                    let responseData = resultString!.data(using: .utf8)
                    let result = try JSONDecoder().decode(QueryStatisticsDataResponse.self, from: responseData!)
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


public extension CdnJDCloudClient{

    @objc public convenience init(credential: Credential) {

        var sdkEnvironment:SDKEnvironment
        if(GlobalConfig.sdkEnvironment != nil)
        {
            sdkEnvironment = GlobalConfig.sdkEnvironment!
        }else{
            sdkEnvironment = SDKEnvironment(endPoint: "cdn.jdcloud-api.com");
        }
        self.init(credential: credential,sdkEnvironment: sdkEnvironment)
    }
}
