//
//  DENetManager.swift
//  U4d
//
//  Created by Quinn Von on 2019/11/22.
//  Copyright © 2019 Quinn Von. All rights reserved.
//
///DisableEvaluationNetManager
//MARK: 禁止证书校验的 sessionManager
import Foundation
import Alamofire
class DENetManager{
    public static let manager: Alamofire.SessionManager = {
        let serverTrustPolicies: [String: ServerTrustPolicy] = [
            "s-east-1.galaxy-ingress.meteor.com": .disableEvaluation,
            "pi.themoviedb.org": .disableEvaluation,
            "api.themoviedb.org": .disableEvaluation,
            "54.243.33.67": .disableEvaluation,
            "34.194.179.109": .disableEvaluation,
            "52.73.54.96": .disableEvaluation,
            "52.54.235.177.9": .disableEvaluation,
            "54.243.249.125": .disableEvaluation,
            "54.243.102.134": .disableEvaluation,
            "54.235.177.9": .disableEvaluation,
            "54.235.202.27": .disableEvaluation,
            "54.225.136.52": .disableEvaluation,
            "image.tmdb.org": .disableEvaluation,
            "104.16.59.155": .disableEvaluation
        ]
        
        let configuration = URLSessionConfiguration.default
        configuration.urlCache = nil
        configuration.urlCredentialStorage = nil
        configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        configuration.timeoutIntervalForRequest = Constants.NetWork.timeOut
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        return Alamofire.SessionManager(
            configuration: configuration,
            serverTrustPolicyManager: MyServerTrustPolicyManager(policies: serverTrustPolicies)
        )
    }()
}

open class MyServerTrustPolicyManager: ServerTrustPolicyManager {
    
    open override func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? {
        return ServerTrustPolicy.disableEvaluation
    }
}
