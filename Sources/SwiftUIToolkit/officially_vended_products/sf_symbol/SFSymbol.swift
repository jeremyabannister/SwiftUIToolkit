//
//  SFSymbol.swift
//  
//
//  Created by Jeremy Bannister on 12/30/21.
//

///
@available(iOS 13.0, macOS 11.0, *)
public struct SFSymbol: View {
    
    ///
    public var identifier: Identifier
    
    ///
    private var shouldIgnoreOriginalAspectRatio: Bool = false
    
    ///
    public init (_ identifier: Identifier) {
        self.identifier = identifier
    }
    
    ///
    public var body: some View {
        if shouldIgnoreOriginalAspectRatio {
            Image(systemName: identifier.string)
                .resizable()
        } else {
            Image(systemName: identifier.string)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
    
    ///
    public func ignoreOriginalAspectRatio () -> Self {
        var copy = self
        copy.shouldIgnoreOriginalAspectRatio = true
        return copy
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
extension SFSymbol {
    
    ///
    public func filledCircle(
        circleColor: Color,
        symbolColor: Color
    ) -> some View {
        
        ///
        self
            .foregroundColor(circleColor)
            .aspectRatio(1, contentMode: .fit)
            .background(Circle().fill(symbolColor).padding(1))
    }
}
