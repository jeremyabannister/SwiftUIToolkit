//
//  Text+ViewWithTextStyle.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension Text: ViewWithTextStyle {
    
    ///
    public func textStyle (_ textStyle: TextStyle) -> Self {
        self
            .font(textStyle.font.asFont)
            .foregroundColor(textStyle.color)
    }
}
