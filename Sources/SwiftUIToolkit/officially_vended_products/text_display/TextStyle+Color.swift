//
//  TextStyle+Color.swift
//  SwiftUIToolkit
//
//  Created by Jeremy Bannister on 11/23/24.
//

extension TextStyle {
    
    @_disfavoredOverload
    public init(
        font: FontDescription,
        color: Color? = nil
    ) {
        self.init(
            font: font,
            foregroundStyle: color ?? .primary
        )
    }
    
    @_disfavoredOverload
    public static func rounded(
        family: Font.Family = .system,
        size: CGFloat,
        weight: Font.Weight = .regular,
        color: Color? = nil
    ) -> Self {
        
        .rounded(
            family: family,
            size: size,
            weight: weight,
            foregroundStyle: color ?? .primary
        )
    }
    
    @_disfavoredOverload
    public static func bold(
        family: Font.Family = .system,
        size: CGFloat,
        design: Font.Design = .default,
        color: Color? = nil
    ) -> Self {
        
        .bold(
            family: family,
            size: size,
            design: design,
            foregroundStyle: color ?? .primary
        )
    }
    
    @_disfavoredOverload
    public static func roundedBold(
        size: CGFloat,
        color: Color? = nil
    ) -> Self {
        
        .roundedBold(
            size: size,
            foregroundStyle: color ?? .primary
        )
    }
    
    @_disfavoredOverload
    public static func systemFont(
        size: CGFloat,
        weight: Font.Weight = .regular,
        design: Font.Design = .default,
        color: Color? = nil
    ) -> Self {
        
        .systemFont(
            size: size,
            weight: weight,
            design: design,
            foregroundStyle: color ?? .primary
        )
    }
}
