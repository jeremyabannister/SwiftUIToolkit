//
//  Color+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/30/21.
//

///
extension Color {
    
    ///
    public init(
        _ r255: Double,
        _ g255: Double,
        _ b255: Double
    ) {
        
        ///
        self.init(
            red: r255/255.0,
            green: g255/255.0,
            blue: b255/255.0
        )
    }
}

///
extension Color: Codable {
    
    ///
    public func encode(to encoder: Encoder) throws {
        
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
    public init(from decoder: Decoder) throws {
        
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

#if canImport(UIKit)
private typealias PlatformColor = UIColor
private extension Color {
    init(platformColor: PlatformColor) {
        self.init(uiColor: platformColor)
    }
}
#elseif canImport(Cocoa)
private typealias PlatformColor = NSColor
private extension Color {
    init(platformColor: PlatformColor) {
        self.init(nsColor: platformColor)
    }
}
#endif
