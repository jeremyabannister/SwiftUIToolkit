//
//  View+frameSynonyms.swift
//  
//
//  Created by Jeremy Bannister on 12/20/21.
//

///
public extension View {
    
    ///
    func width (_ width: CGFloat?,
                alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: width,
            alignment: alignment
        )
    }
    
    ///
    func height (_ height: CGFloat?,
                 alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            height: height,
            alignment: alignment
        )
    }
    
    ///
    func minWidth (_ minWidth: CGFloat?,
                   alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            minWidth: minWidth,
            alignment: alignment
        )
    }
    
    ///
    func maxWidth (_ maxWidth: CGFloat?,
                   alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            maxWidth: maxWidth,
            alignment: alignment
        )
    }
    
    ///
    func minHeight (_ minHeight: CGFloat?,
                    alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            minHeight: minHeight,
            alignment: alignment
        )
    }
    
    ///
    func maxHeight (_ maxHeight: CGFloat?,
                    alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            maxHeight: maxHeight,
            alignment: alignment
        )
    }
    
    ///
    func size (_ width: CGFloat?,
               _ height: CGFloat?,
               alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: width,
            height: height,
            alignment: alignment
        )
    }
    
    ///
    func size (width: CGFloat?,
               height: CGFloat?,
               alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: width,
            height: height,
            alignment: alignment
        )
    }
    
    ///
    func size (_ size: CGSize?,
               alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: size?.width,
            height: size?.height,
            alignment: alignment
        )
    }
    
    ///
    func squareFrame (_ sideLength: CGFloat,
                      alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: sideLength,
            height: sideLength,
            alignment: alignment
        )
    }
    
    ///
    func frame (size: CGSize?,
                alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: size?.width,
            height: size?.height,
            alignment: alignment
        )
    }
    
    ///
    func frame (_ width: CGFloat?,
                _ height: CGFloat?,
                alignment: Alignment = .center)
        -> some View {
        
        self.frame(
            width: width,
            height: height,
            alignment: alignment
        )
    }
}
