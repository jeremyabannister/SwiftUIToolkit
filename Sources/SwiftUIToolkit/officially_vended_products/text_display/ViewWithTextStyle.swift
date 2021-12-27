//
//  ViewWithTextStyle.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public protocol ViewWithTextStyle: View {
    
    ///
    func textStyle (_ textStyle: TextStyle) -> Self
}

///
public extension ViewWithTextStyle {
    
    ///
    func multilineTextStyle (_ textStyle: MultilineTextStyle) -> some View {
        self
            .textStyle(textStyle.textStyle)
            .multilineTextAlignment(textStyle.multilineTextAlignment)
    }
}
