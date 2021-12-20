//
//  View+onPressed.swift
//  
//
//  Created by Jeremy Bannister on 12/20/21.
//

///
public extension View {
    
    ///
    func onPressed (_ onPressed: @escaping ()->()) -> some View {
        Button(action: onPressed, label: { self })
            .buttonStyle(CustomButtonStyle())
    }
}

///
fileprivate struct CustomButtonStyle: ButtonStyle {
    
    ///
    func makeBody (configuration: Configuration) -> some View {
        configuration
            .label
            .opacity(configuration.isPressed ? 0.75 : 1)
            .contentShape(Rectangle())
    }
}
