//
//  extension_Binding<String>.swift
//  
//
//  Created by Jeremy Bannister on 11/18/22.
//

///
@available(macOS 13.0, iOS 16.0, watchOS 9.0, tvOS 16, *)
extension Binding<String> {
    
    ///
    public func asTextField(placeholder: String? = nil) -> some View {
        TextField(placeholder ?? "", text: self, axis: .vertical)
            .textFieldStyle(.plain)
    }
}
