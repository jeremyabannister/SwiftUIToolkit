//
//  View+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension View {
    
    ///
    public func leadStack(
        alignment: VerticalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder _ viewBuilder: ()->some View
    ) -> some View {
        
        ///
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
    public func trailStack(
        alignment: VerticalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder _ viewBuilder: ()->some View
    ) -> some View {
        
        ///
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
    public func topStack(
        alignment: HorizontalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder _ viewBuilder: ()->some View
    ) -> some View {
        
        ///
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
    public func bottomStack(
        alignment: HorizontalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder _ viewBuilder: ()->some View
    ) -> some View {
        
        ///
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
extension View {
    
    ///
    public nonisolated func asAnyView() -> AnyView {
        AnyView(self)
    }
}

///
extension View {
    
    ///
    public func nullify(if predicate: (Self)->Bool) -> Self? {
        nullify(if: predicate(self))
    }
    
    ///
    public func nullify(if condition: Bool) -> Self? {
        condition ? nil : self
    }
}
