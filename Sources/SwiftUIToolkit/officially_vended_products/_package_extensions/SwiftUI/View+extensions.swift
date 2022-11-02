//
//  View+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public extension View {
    
    ///
    func leadStack
        (alignment: VerticalAlignment = .center,
         spacing: CGFloat? = nil,
         @ViewBuilder _ viewBuilder: ()->some View)
    -> some View {
            
            HStack(
                alignment: alignment,
                spacing: spacing,
                content: {
                    viewBuilder()
                    self
                }
            )
    }
    
    ///
    func trailStack
        (alignment: VerticalAlignment = .center,
         spacing: CGFloat? = nil,
         @ViewBuilder _ viewBuilder: ()->some View)
    -> some View {
            
        HStack(
            alignment: alignment,
            spacing: spacing,
            content: {
                self
                viewBuilder()
            }
        )
    }
    
    ///
    func topStack
        (alignment: HorizontalAlignment = .center,
         spacing: CGFloat? = nil,
         @ViewBuilder _ viewBuilder: ()->some View)
    -> some View {
            
            VStack(
                alignment: alignment,
                spacing: spacing,
                content: {
                    viewBuilder()
                    self
                }
            )
    }
    
    ///
    func bottomStack
        (alignment: HorizontalAlignment = .center,
         spacing: CGFloat? = nil,
         @ViewBuilder _ viewBuilder: ()->some View)
    -> some View {
            
        VStack(
            alignment: alignment,
            spacing: spacing,
            content: {
                self
                viewBuilder()
            }
        )
    }
}

///
public extension View {
    
    ///
    func asAnyView () -> AnyView {
        AnyView(self)
    }
}

///
public extension View {
    
    ///
    func nullify (if predicate: (Self)->Bool) -> Self? {
        nullify(if: predicate(self))
    }
    
    ///
    func nullify (if condition: Bool) -> Self? {
        condition ? nil : self
    }
}
