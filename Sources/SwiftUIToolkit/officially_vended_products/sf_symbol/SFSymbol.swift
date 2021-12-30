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
    public init (_ identifier: Identifier) {
        self.identifier = identifier
    }
    
    ///
    public var body: some View {
        Image(systemName: identifier.string)
            .resizable()
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
public extension SFSymbol {
    
    ///
    func filledCircle (circleColor: Color,
                       symbolColor: Color) -> some View {
        self
            .foregroundColor(circleColor)
            .aspectRatio(1, contentMode: .fit)
            .background(Circle().fill(symbolColor).padding(1))
    }
}
