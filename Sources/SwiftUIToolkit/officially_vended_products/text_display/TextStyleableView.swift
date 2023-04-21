//
//  TextStyleableView.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public protocol TextStyleableView: View {
    
    ///
    func textStyle (_ textStyle: TextStyle) -> TextStyledSelf
    
    ///
    associatedtype TextStyledSelf: View
}

///
public extension TextStyleableView {
    
    ///
    func multilineTextStyle (_ textStyle: MultilineTextStyle) -> some View {
        self
            .textStyle(textStyle.textStyle)
            .multilineTextAlignment(textStyle.multilineTextAlignment)
    }
}
