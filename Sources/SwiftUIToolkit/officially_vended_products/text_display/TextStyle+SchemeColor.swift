//
//  TextStyle+SchemeColor.swift
//  SwiftUIToolkit
//
//  Created by Jeremy Bannister on 11/23/24.
//

extension TextStyle {
    
    public init(
        font: FontDescription,
        color: SchemeColor? = nil
    ) {
        self.init(
            font: font,
            foregroundStyle: color ?? HierarchicalShapeStyle.primary
        )
    }
    
    public static func rounded(
        family: Font.Family = .system,
        size: CGFloat,
        weight: Font.Weight = .regular,
        color: SchemeColor? = nil
    ) -> Self {
        
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
    
    public static func bold(
        family: Font.Family = .system,
        size: CGFloat,
        design: Font.Design = .default,
        color: SchemeColor? = nil
    ) -> Self {
        
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
    
    public static func roundedBold(
        size: CGFloat,
        color: SchemeColor? = nil
    ) -> Self {
        
        .bold(
            size: size,
            design: .rounded,
            color: color
        )
    }
    
    public static func systemFont(
        size: CGFloat,
        weight: Font.Weight = .regular,
        design: Font.Design = .default,
        color: SchemeColor? = nil
    ) -> Self {
        
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
