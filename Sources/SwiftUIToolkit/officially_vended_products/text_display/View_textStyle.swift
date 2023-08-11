//
//  View_textStyle.swift
//  
//
//  Created by Jeremy Bannister on 8/11/23.
//

///
extension View {
    
    ///
    public func textStyle (_ textStyle: TextStyle) -> some View {
        self
            .font(textStyle.font.asFont)
            .foregroundColor(textStyle.color)
    }
}
