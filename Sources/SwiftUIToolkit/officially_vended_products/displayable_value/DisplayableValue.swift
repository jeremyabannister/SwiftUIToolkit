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
extension DisplayableValue {
    
    ///
    public func displayed<
        Content: View
    >(
        @ViewBuilder using contentBuilder: (Self)->Content
    ) -> Content {
        
        ///
        contentBuilder(self)
    }
    
    ///
    public func displayed(
        _ displayFunction: ValueDisplayFunction<Self>
    ) -> some View {
        
        ///
        displayFunction(self)
    }
}
