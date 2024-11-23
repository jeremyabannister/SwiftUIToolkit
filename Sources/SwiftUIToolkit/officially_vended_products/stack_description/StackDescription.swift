//
//  StackDescription.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
public enum StackDescription:
    Equatable,
    ExpressionErgonomic,
    Sendable {
    
    ///
    case H(
        eagerOrLazy: EagerOrLazy,
        alignment: VerticalAlignment,
        spacing: CGFloat?
    )
    
    ///
    case V(
        eagerOrLazy: EagerOrLazy,
        alignment: HorizontalAlignment,
        spacing: CGFloat?
    )
    
    ///
    case Z(
        alignment: Alignment
    )
}

///
extension StackDescription {
    
    ///
    @ViewBuilder
    public func makeStack<
        Content: View
    >(
        @ViewBuilder contentBuilder: ()->Content
    ) -> some View {
        
        ///
        switch self {
            
        ///
        case .H(
            let eagerOrLazy,
            let alignment,
            let spacing
        ):
            
            ///
            eagerOrLazy
                .horizontalStack(
                    alignment: alignment,
                    spacing: spacing,
                    contentBuilder: contentBuilder
                )
            
        ///
        case .V(
            let eagerOrLazy,
            let alignment,
            let spacing
        ):
            
            ///
            eagerOrLazy
                .verticalStack(
                    alignment: alignment,
                    spacing: spacing,
                    contentBuilder: contentBuilder
                )
            
        ///
        case .Z(
            let alignment
        ):
            
            ///
            ZStack(
                alignment: alignment,
                content: contentBuilder
            )
        }
    }
}

///
extension StackDescription {
    
    ///
    public var eagerOrLazy: EagerOrLazy {
        get {
            switch self {
            case .H(let eagerOrLazy, _, _): return eagerOrLazy
            case .V(let eagerOrLazy, _, _): return eagerOrLazy
            case .Z: return .eager
            }
        }
        set {
            
            ///
            switch self {
                
            ///
            case .H(
                _,
                let alignment,
                let spacing
            ):
                
                ///
                self =
                    .H(
                        eagerOrLazy: newValue,
                        alignment: alignment,
                        spacing: spacing
                    )
                
            ///
            case .V(
                _,
                let alignment,
                let spacing
            ):
                
                ///
                self =
                    .V(
                        eagerOrLazy: newValue,
                        alignment: alignment,
                        spacing: spacing
                    )
                
            ///
            case .Z: break
            }
        }
    }
}
