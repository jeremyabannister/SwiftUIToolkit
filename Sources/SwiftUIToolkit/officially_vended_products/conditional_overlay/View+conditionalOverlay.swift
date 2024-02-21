//
//  View+conditionalOverlay.swift
//  
//
//  Created by Jeremy Bannister on 1/19/22.
//

///
extension View {
    
    ///
    public func conditionalOverlay<
        Overlay: View
    >(
        condition: Bool,
        transition: AnyTransition = .scale(scale: 0.00001),
        alignment: Alignment = .center,
        @ViewBuilder overlay: ()->Overlay
    ) -> some View {
        
        ///
        self.optionalOverlay(
            value: condition ? Void?.some(()) : Void?.none,
            transition: transition,
            alignment: alignment,
            overlay: { _ in
                overlay()
            }
        )
    }
}
