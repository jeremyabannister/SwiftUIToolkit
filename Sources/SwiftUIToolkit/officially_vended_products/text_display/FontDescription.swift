//
//  FontDescription.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public struct FontDescription:
    ValueType,
    Codable {
    
    ///
    public var family: Font.Family
    public var size: CGFloat
    public var weight: Font.Weight
    public var design: Font.Design
    
    ///
    public init(
        family: Font.Family,
        size: CGFloat,
        weight: Font.Weight,
        design: Font.Design
    ) {
        
        ///
        self.family = family
        self.size = size
        self.weight = weight
        self.design = design
    }
}

///
extension FontDescription {
    
    ///
    public static func system(
        size: CGFloat,
        weight: Font.Weight = .regular,
        design: Font.Design = .default
    ) -> Self {
        
        ///
        .init(
            family: .system,
            size: size,
            weight: weight,
            design: design
        )
    }
    
    ///
    public static func custom(
        _ fontName: String,
        size: CGFloat,
        weight: Font.Weight = .regular,
        design: Font.Design = .default
    ) -> Self {
        
        ///
        .init(
            family: .custom(fontName),
            size: size,
            weight: weight,
            design: design
        )
    }
    
    ///
    public var asFont: Font {
        switch family {
        case .system:
            return
                .system(
                    size: size,
                    weight: weight,
                    design: design
                )
            
        case .custom (let name):
            return
                .custom(
                    name,
                    size: size
                )
        }
    }
}

///
extension FontDescription {
    
    ///
    public init() {
        self = .system(size: 12)
    }
}

///
#if os(iOS)

///
extension FontDescription {
    public var asUIFont: UIFont {
        switch family {
        case .system:
            return UIFont.systemFont(ofSize: size)
            
        case .custom (let name):
            return UIFont(name: name, size: size) ?? .systemFont(ofSize: size)
        }
    }
}

///
#elseif os(macOS)

///
extension FontDescription {
    public var asNSFont: NSFont {
        switch family {
        case .system:
            return NSFont.systemFont(ofSize: size)
            
        case .custom (let name):
            return NSFont(name: name, size: size) ?? .systemFont(ofSize: size)
        }
    }
}

///
#endif
