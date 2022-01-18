//
//  DisplayableValue.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
public protocol DisplayableValue {
    
}

///
public extension DisplayableValue {
    
    ///
    func displayed <Content: View> (@ViewBuilder using contentBuilder: (Self)->Content) -> Content {
        contentBuilder(self)
    }
    
    ///
    func displayed (_ displayFunction: ValueDisplayFunction<Self>) -> some View {
        displayFunction(self)
    }
}
