//
//  TypeEffectivenessTable.swift
//  swift-pokemon-types
//  
//  Created by elmetal on 2026/04/26
//  
//

public protocol TypeEffectivenessTable: Sendable {
    func effectiveness(of attackingType: PokemonType,
                       against defendingType: PokemonType) -> TypeEffectiveness
}
