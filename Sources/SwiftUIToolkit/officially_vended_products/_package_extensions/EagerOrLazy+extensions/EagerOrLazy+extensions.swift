//
//  EagerOrLazy+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
extension EagerOrLazy {
    
    ///
    @ViewBuilder
    public func horizontalStack<
        Content: View
    >(
        alignment: VerticalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder contentBuilder: ()->Content
    ) -> some View {
        
        ///
        switch self {
        case .eager:
            HStack(alignment: alignment,
                   spacing: spacing) {
                contentBuilder()
            }
            
        case .lazy:
            LazyHStack(alignment: alignment,
                       spacing: spacing) {
                contentBuilder()
            }
        }
    }
    
    ///
    @ViewBuilder
    public func verticalStack<
        Content: View
    >(
        alignment: HorizontalAlignment = .center,
        spacing: CGFloat? = nil,
        @ViewBuilder contentBuilder: ()->Content
    ) -> some View {
        
        ///
        switch self {
        case .eager:
            VStack(alignment: alignment,
                   spacing: spacing) {
                contentBuilder()
            }
            
        case .lazy:
            LazyVStack(alignment: alignment,
                       spacing: spacing) {
                contentBuilder()
            }
        }
    }
}
