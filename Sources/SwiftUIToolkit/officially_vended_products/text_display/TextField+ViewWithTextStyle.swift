//
//  TextField+ViewWithTextStyle.swift
//  
//
//  Created by Jeremy Bannister on 4/21/23.
//

///
extension TextField: ViewWithTextStyle {
    
    ///
    public func textStyle (_ textStyle: TextStyle) -> some View {
        self
            .font(textStyle.font.asFont)
            .foregroundColor(textStyle.color)
    }
}
