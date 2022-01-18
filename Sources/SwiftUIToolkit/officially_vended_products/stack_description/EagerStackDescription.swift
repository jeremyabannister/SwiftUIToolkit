//
//  EagerStackDescription.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
public enum EagerStackDescription: Equatable,
                                   ExpressionErgonomic {
    
    ///
    case H (alignment: VerticalAlignment,
            spacing: CGFloat?)
    
    ///
    case V (alignment: HorizontalAlignment,
            spacing: CGFloat?)
    
    ///
    case Z (alignment: Alignment)
}

///
@available(iOS 14.0, macOS 11.0, *)
public extension EagerStackDescription {
    
    ///
    var asStackDescription: StackDescription {
        switch self {
        case .H (let alignment,
                 let spacing):
            
            return
                .H(
                    eagerOrLazy: .eager,
                    alignment: alignment,
                    spacing: spacing
                )
            
        case .V (let alignment,
                 let spacing):
            
            return
                .V(
                    eagerOrLazy: .eager,
                    alignment: alignment,
                    spacing: spacing
                )
            
        case .Z (let alignment):
            
            return
                .Z(
                    alignment: alignment
                )
        }
    }
}

///
public extension EagerStackDescription {
    
    ///
    @ViewBuilder
    func makeStack <Content: View> (@ViewBuilder contentBuilder: ()->Content) -> some View {
        switch self {
        case .H (let alignment,
                 let spacing):
            
            HStack(alignment: alignment,
                   spacing: spacing) {
                contentBuilder()
            }
            
        case .V (let alignment,
                 let spacing):
            
            VStack(alignment: alignment,
                   spacing: spacing) {
                contentBuilder()
            }
            
        case .Z (let alignment):
            
            ZStack(alignment: alignment) {
                contentBuilder()
            }
        }
    }
}
