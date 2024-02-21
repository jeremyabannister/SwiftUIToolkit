//
//  MultilineTextStyle.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

// MARK: - Head -

///
public struct MultilineTextStyle: ProperValueType {
    
    ///
    public var textStyle: TextStyle
    
    ///
    public var multilineTextAlignment: TextAlignment
    
    ///
    public init(
        textStyle: TextStyle,
        multilineTextAlignment: TextAlignment = .center
    ) {
        
        ///
        self.textStyle = textStyle
        self.multilineTextAlignment = multilineTextAlignment
    }
}

// MARK: - Stack -

///
extension MultilineTextStyle {
    
    ///
    public init(
        font: FontDescription,
        color: Color,
        multilineTextAlignment: TextAlignment = .center
    ) {
        
        ///
        self.init(
            textStyle:
                .init(
                    font: font,
                    color: color
                ),
            multilineTextAlignment: multilineTextAlignment
        )
    }
}
