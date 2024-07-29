//
//  TextStyle.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public struct TextStyle:
    ValueType,
    Codable {
    
    ///
    public var font: FontDescription
    public var color: Color?
    
    ///
    public init(
        font: FontDescription,
        color: Color? = nil
    ) {
        
        ///
        self.font = font
        self.color = color
    }
}

///
extension TextStyle {
    
    ///
    public static func roundedBold(
        size: CGFloat,
        color: Color? = nil
    ) -> Self {
        
        ///
        .bold(
            size: size,
            design: .rounded,
            color: color
        )
    }
}

///
extension TextStyle {
    
    ///
    public static func rounded(
        family: Font.Family = .system,
        size: CGFloat,
        weight: Font.Weight = .regular,
        color: Color? = nil
    ) -> Self {
        
        ///
        .init(
            font:
                .init(
                    family: family,
                    size: size,
                    weight: weight,
                    design: .rounded
                ),
            color: color
        )
    }
    
    ///
    public static func bold(
        family: Font.Family = .system,
        size: CGFloat,
        design: Font.Design = .default,
        color: Color? = nil
    ) -> Self {
        
        ///
        .init(
            font:
                .init(
                    family: family,
                    size: size,
                    weight: .semibold,
                    design: design
                ),
            color: color
        )
    }
}

///
extension TextStyle {
    
    ///
    public static func systemFont(
        size: CGFloat,
        weight: Font.Weight = .regular,
        design: Font.Design = .default,
        color: Color? = nil
    ) -> Self {
        
        ///
        .init(
            font:
                .system(
                    size: size,
                    weight: weight,
                    design: design
                ),
            color: color
        )
    }
}

///
extension TextStyle {
    
    ///
    public init() {
        self.init(font: .init())
    }
}

///
extension TextStyle {
    
    ///
    public static var defaultColor: Color = .black
}
