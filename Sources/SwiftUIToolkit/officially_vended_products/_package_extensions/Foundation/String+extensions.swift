//
//  String+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension String {
    
    ///
    @MainActor
    public func displayed(_ textStyle: TextStyle) -> some View {
        Text(self)
            .textStyle(textStyle)
    }
}
