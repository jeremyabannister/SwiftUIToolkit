//
//  View+onPressed.swift
//  
//
//  Created by Jeremy Bannister on 12/20/21.
//

///
extension View {
    
    ///
    public func onPressed<
        ModifiedView: View
    >(
        perform action: @escaping ()->(),
        modifyBaseView: @escaping (Self, Bool)->ModifiedView
    ) -> some View {
        
        ///
        Button(action: action, label: { self })
            .buttonStyle(
                CustomButtonStyle(
                    baseView: self,
                    modifyBaseView: modifyBaseView
                )
            )
    }
}

///
extension View {
    
    ///
    public func onPressed(
        _ onPressed: @escaping ()->()
    ) -> some View {
        
        ///
        Button(action: onPressed, label: { self })
            .buttonStyle(
                CustomButtonStyle(
                    baseView: self,
                    modifyBaseView: { baseView, isPressed in
                        baseView
                            .opacity(isPressed ? 0.75 : 1.0)
                    }
                )
            )
    }
}

///
private struct CustomButtonStyle<
    BaseView: View,
    Button: View
>: ButtonStyle {
    
    ///
    var baseView: BaseView
    
    ///
    var modifyBaseView: (BaseView, Bool)->Button
}

///
extension CustomButtonStyle {
    
    ///
    @ViewBuilder
    func makeBody (configuration: Configuration) -> some View {
        modifyBaseView(
            baseView,
            configuration.isPressed
        )
        .contentShape(Rectangle())
    }
}
