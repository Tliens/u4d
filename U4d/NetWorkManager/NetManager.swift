//
//  NetManager.swift
//  U4d
//
//  Created by Quinn Von on 2019/11/22.
//  Copyright © 2019 Quinn Von. All rights reserved.
//

import Foundation
import Alamofire
//MARK: 正常校验证书的 sessionManager
class NetManager{
    public static let manager: Alamofire.SessionManager = {
        let configuration = URLSessionConfiguration.default
        configuration.urlCache = nil
        configuration.urlCredentialStorage = nil
        configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        configuration.timeoutIntervalForRequest = Constants.NetWork.timeOut
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        return Alamofire.SessionManager(configuration: configuration)
    }()
}
