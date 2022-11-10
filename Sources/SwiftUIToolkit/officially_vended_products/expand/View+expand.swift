//
//  View+expand.swift
//  
//
//  Created by Jeremy Bannister on 12/20/21.
//

///
public extension View {
    
    ///
    func expand
        (along axis: HorizontalAxisOverloadDisambiguator,
         alignment: HorizontalAlignment = .center)
    -> some View {
        HStack {
            Spacer(minLength: 0)
                .nullify(if: alignment.isEqual(to: .leading))
            self
            Spacer(minLength: 0)
                .nullify(if: alignment.isEqual(to: .trailing))
        }
    }
    
    ///
    func expand
        (along axis: VerticalAxisOverloadDisambiguator,
         alignment: VerticalAlignment = .center)
    -> some View {
        VStack {
            Spacer(minLength: 0)
                .nullify(if: alignment.isEqual(to: .top))
            self
            Spacer(minLength: 0)
                .nullify(if: alignment.isEqual(to: .bottom))
        }
    }
}

///
public struct HorizontalAxisOverloadDisambiguator {
    public static var horizontal: Self { .init() }
}
public struct VerticalAxisOverloadDisambiguator {
    public static var vertical: Self { .init() }
}

///
public extension View {
    
    ///
    func expand (alignment: Alignment = .center) -> some View {
        ZStack(alignment: alignment) {
            Color.clear
            self
        }
    }
}
