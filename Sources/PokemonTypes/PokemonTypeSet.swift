//
//  PokemonTypeSet.swift
//  swift-pokemon-types
//  
//  Created by elmetal on 2026/04/26
//  
//

public struct PokemonTypeSet: Hashable, Sendable {
    private var storage: Set<PokemonType>
    
    public init(_ types: some Sequence<PokemonType>) {
        self.storage = Set(types)
    }
    
    public func allCases() -> some Collection<PokemonType> & Sendable {
        PokemonType.allCases.filter(storage.contains)
    }
    
    public static let latest: Self = .init(PokemonType.allCases)
}
