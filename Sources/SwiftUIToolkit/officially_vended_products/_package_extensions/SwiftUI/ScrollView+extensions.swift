//
//  ScrollView+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
public extension ScrollView {
    
    ///
    init (singleAxis: Axis,
          showsIndicators: Bool = true,
          @ViewBuilder content: ()->Content) {
        
        self.init(
            singleAxis.correspondingAxisSet,
            showsIndicators: showsIndicators,
            content: content
        )
    }
}
