//
//  SFSymbol_Identifier.swift
//  
//
//  Created by Jeremy Bannister on 12/30/21.
//

///
@available(iOS 13.0, macOS 11.0, *)
extension SFSymbol {
    
    ///
    public struct Identifier:
        ValueType,
        Codable,
        ExpressibleByStringLiteral {
        
        ///
        public private(set) var string: String
        
        ///
        public init(stringLiteral value: String) {
            self.string = value
        }
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
extension SFSymbol.Identifier {
    
    ///
    public static var checkmark: Self {
        "checkmark"
    }
    
    ///
    public static var xmark: Self {
        "xmark"
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
extension SFSymbol.Identifier {
    
    ///
    public var bin: Self {
        self.appending("bin")
    }
    
    ///
    public var seal: Self {
        self.appending("seal")
    }
    
    ///
    public var icloud: Self {
        self.appending("icloud")
    }
    
    ///
    public var app: Self {
        self.appending("app")
    }
    
    ///
    public var rectangle: Self {
        self.appending("rectangle")
    }
    
    ///
    public var diamond: Self {
        self.appending("diamond")
    }
    
    ///
    public var shield: Self {
        self.appending("shield")
    }
    
    ///
    public var octagon: Self {
        self.appending("octagon")
    }
    
    ///
    public var circle: Self {
        self.appending("circle")
    }
    
    ///
    public var square: Self {
        self.appending("square")
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
extension SFSymbol.Identifier {
    
    ///
    public var fill: Self {
        self.appending("fill")
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
extension SFSymbol.Identifier {
    
    ///
    public func appending(_ component: String) -> Self {
        .init(stringLiteral: string + "." + component)
    }
}
