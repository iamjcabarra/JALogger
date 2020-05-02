//
//  JALogger.swift
//  JALogger
//
//  Created by Julius Camba Abarra on 5/2/20.
//  Copyright © 2020 iamjcabarra. All rights reserved.
//

import Foundation
import os.log

public enum JALogger {
    case business
    case ui
    case network
    
    // MARK: - Constants
    private static let businessLog: OSLog = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "Business")
    private static let uiLog: OSLog = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "UI")
    private static let networkLog: OSLog = OSLog(subsystem: Bundle.main.bundleIdentifier!, category: "Network")
    
    // MARK: - Properties
    private var log: OSLog {
        switch self {
        case .business:
            return JALogger.businessLog
        case .ui:
            return JALogger.uiLog
        case .network:
            return JALogger.networkLog
        }
    }
}

// MARK: - Public APIs
extension JALogger {
    
    /// Sends message to the logging system. Part of the message is the
    /// details about the log, which includes subsystem and category.
    ///
    /// - Parameter message: A `String` identifying log message
    /// - Returns: None
    public func log(_ message: String) {
        os_log("%(public)@", log: self.log, type: OSLogType.default, message)
    }
    
}
