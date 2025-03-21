//
//  TextStyle.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

public struct TextStyle: Sendable, ExpressionErgonomic {
    
    public var font: FontDescription
    public var foregroundStyle: (any ShapeStyle & Sendable)
    
    public init(
        font: FontDescription,
        foregroundStyle: (any ShapeStyle & Sendable)
    ) {
        self.font = font
        self.foregroundStyle = foregroundStyle
    }
}

extension TextStyle {
    public static func rounded(
        family: Font.Family = .system,
        size: CGFloat,
        weight: Font.Weight = .regular,
        foregroundStyle: (any ShapeStyle & Sendable)
    ) -> Self {
        
        .init(
            font:
                .init(
                    family: family,
                    size: size,
                    weight: weight,
                    design: .rounded
                ),
            foregroundStyle: foregroundStyle
        )
    }
    
    public static func bold(
        family: Font.Family = .system,
        size: CGFloat,
        design: Font.Design = .default,
        foregroundStyle: (any ShapeStyle & Sendable)
    ) -> Self {
        
        .init(
            font:
                .init(
                    family: family,
                    size: size,
                    weight: .semibold,
                    design: design
                ),
            foregroundStyle: foregroundStyle
        )
    }
    
    public static func roundedBold(
        size: CGFloat,
        foregroundStyle: (any ShapeStyle & Sendable)
    ) -> Self {
        
        .bold(
            size: size,
            design: .rounded,
            foregroundStyle: foregroundStyle
        )
    }
    
    public static func systemFont(
        size: CGFloat,
        weight: Font.Weight = .regular,
        design: Font.Design = .default,
        foregroundStyle: (any ShapeStyle & Sendable)
    ) -> Self {
        
        .init(
            font:
                .system(
                    size: size,
                    weight: weight,
                    design: design
                ),
            foregroundStyle: foregroundStyle
        )
    }
}

extension TextStyle {
    public init() {
        self.init(
            font: .init(),
            foregroundStyle: .primary
        )
    }
}
