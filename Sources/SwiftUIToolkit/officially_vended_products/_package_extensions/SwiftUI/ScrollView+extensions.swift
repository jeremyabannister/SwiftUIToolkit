//
//  ScrollView+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
extension ScrollView {
    
    ///
    public init(
        singleAxis: Axis,
        showsIndicators: Bool = true,
        @ViewBuilder content: ()->Content
    ) {
        
        ///
        self.init(
            singleAxis.correspondingAxisSet,
            showsIndicators: showsIndicators,
            content: content
        )
    }
}
