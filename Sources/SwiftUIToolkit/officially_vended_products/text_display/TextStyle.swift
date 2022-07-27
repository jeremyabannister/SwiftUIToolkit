//
//  TextStyle.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public struct TextStyle: ProperValueType {
    
    ///
    public var font: FontDescription
    
    ///
    public var color: Color?
    
    ///
    public init (font: FontDescription,
                 color: Color? = nil) {
        
        self.font = font
        self.color = color
    }
}

///
public extension TextStyle {
    
    ///
    static func roundedBold (size: CGFloat,
                             color: Color? = nil) -> Self {
        
        .bold(
            size: size,
            design: .rounded,
            color: color
        )
    }
}

///
public extension TextStyle {
    
    ///
    static func rounded (family: Font.Family = .system,
                         size: CGFloat,
                         weight: Font.Weight = .regular,
                         color: Color? = nil)
        -> Self {
        
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
    static func bold (family: Font.Family = .system,
                      size: CGFloat,
                      design: Font.Design = .default,
                      color: Color? = nil)
        -> Self {
        
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
public extension TextStyle {
    
    ///
    static func systemFont (size: CGFloat,
                            weight: Font.Weight = .regular,
                            design: Font.Design = .default,
                            color: Color? = nil)
        -> Self {
        
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
public extension TextStyle {
    
    ///
    init () {
        self.init(font: .init())
    }
}

///
public extension TextStyle {
    
    ///
    static var defaultColor: Color = .black
}
