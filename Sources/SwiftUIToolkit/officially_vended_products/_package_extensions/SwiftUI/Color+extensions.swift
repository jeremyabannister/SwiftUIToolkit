//
//  Color+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/30/21.
//

///
public extension Color {
    
    ///
    init (_ r255: Double,
          _ g255: Double,
          _ b255: Double) {
        
        self.init(
            red: r255/255.0,
            green: g255/255.0,
            blue: b255/255.0
        )
    }
}

///
@available(macOS 12, iOS 15.0, watchOS 8, tvOS 15, *)
extension Color: Codable {
    
    ///
    public func encode (to encoder: Encoder) throws {
        
        ///
        var container = encoder.singleValueContainer()
        
        ///
        try container
            .encode(
                try NSKeyedArchiver.archivedData(
                    withRootObject: PlatformColor(self),
                    requiringSecureCoding: true
                )
            )
    }
    
    ///
    public init (from decoder: Decoder) throws {
        
        ///
        let data = try decoder.singleValueContainer().decode(Data.self)
        
        ///
        guard let platformColor =
            try NSKeyedUnarchiver
                .unarchivedObject(
                    ofClass: PlatformColor.self,
                    from: data
                )
        else { throw "wrongType".asErrorMessage() }
        
        ///
        self = Color(platformColor: platformColor)
    }
}

#if os(iOS) || os(watchOS) || os(tvOS)
fileprivate typealias PlatformColor = UIColor
@available(iOS 15, watchOS 8, tvOS 15, *)
fileprivate extension Color {
    init(platformColor: PlatformColor) {
        self.init(uiColor: platformColor)
    }
}
#elseif os(macOS)
fileprivate typealias PlatformColor = NSColor
@available(macOS 12, *)
fileprivate extension Color {
    init(platformColor: PlatformColor) {
        self.init(nsColor: platformColor)
    }
}
#endif
