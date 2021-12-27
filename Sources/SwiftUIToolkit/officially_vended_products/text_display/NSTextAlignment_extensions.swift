//
//  NSTextAlignment_extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

#if os(macOS)
public extension NSTextAlignment {
    var asTextAlignment: TextAlignment {
        switch self {
        case .left: return .leading
        case .center: return .center
        case .right: return .trailing
        case .justified: return .center
        case .natural: return .leading
        @unknown default: return .leading
        }
    }
}
#endif
