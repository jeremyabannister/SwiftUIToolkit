//
//  View+optionalOverlay.swift
//  
//
//  Created by Jeremy Bannister on 1/19/22.
//

///
extension View {
    
    ///
    public func optionalOverlay<
        Overlay: View,
        DisplayedValue
    >(
        value: Optional<DisplayedValue>,
        transition: AnyTransition = .scale(scale: 0.00001),
        alignment: Alignment = .center,
        @ViewBuilder overlay: (DisplayedValue)->Overlay
    ) -> some View {
        
        ///
        self.overlay(
            value
                .map(overlay)?
                .transition(transition),
            alignment: alignment
        )
    }
}
