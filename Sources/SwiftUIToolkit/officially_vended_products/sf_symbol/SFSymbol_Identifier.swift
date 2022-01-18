//
//  SFSymbol_Identifier.swift
//  
//
//  Created by Jeremy Bannister on 12/30/21.
//

///
@available(iOS 13.0, macOS 11.0, *)
public extension SFSymbol {
    
    ///
    struct Identifier: ProperValueType,
                       ExpressibleByStringLiteral {
        
        ///
        public private(set) var string: String
        
        ///
        public init (stringLiteral value: String) {
            self.string = value
        }
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
public extension SFSymbol.Identifier {
    
    ///
    static var checkmark: Self {
        "checkmark"
    }
    
    ///
    static var xmark: Self {
        "xmark"
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
public extension SFSymbol.Identifier {
    
    ///
    var bin: Self {
        self.appending("bin")
    }
    
    ///
    var seal: Self {
        self.appending("seal")
    }
    
    ///
    var icloud: Self {
        self.appending("icloud")
    }
    
    ///
    var app: Self {
        self.appending("app")
    }
    
    ///
    var rectangle: Self {
        self.appending("rectangle")
    }
    
    ///
    var diamond: Self {
        self.appending("diamond")
    }
    
    ///
    var shield: Self {
        self.appending("shield")
    }
    
    ///
    var octagon: Self {
        self.appending("octagon")
    }
    
    ///
    var circle: Self {
        self.appending("circle")
    }
    
    ///
    var square: Self {
        self.appending("square")
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
public extension SFSymbol.Identifier {
    
    ///
    var fill: Self {
        self.appending("fill")
    }
}

///
@available(iOS 13.0, macOS 11.0, *)
public extension SFSymbol.Identifier {
    
    ///
    func appending (_ component: String) -> Self {
        .init(stringLiteral: string + "." + component)
    }
}
