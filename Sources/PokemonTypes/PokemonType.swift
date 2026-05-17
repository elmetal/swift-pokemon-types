//
//  PokemonType.swift
//  swift-pokemon-damage-calculator
//
//  Created by elmetal on 2026/04/26
//
//

import Foundation

public enum PokemonType: Equatable, CaseIterable, Sendable {
    case normal
    case fighting
    case flying
    case poison
    case bug
    case steel
    case psychic
    case ice
    case dragon
    case dark
    case fairy
    case fire
    case water
    case grass
    case electric
    case ground
    case rock
    case ghost
}

extension PokemonType {
    public struct FormatStyle: Foundation.FormatStyle, Sendable {
        public var locale: Locale

        public init(locale: Locale = .autoupdatingCurrent) {
            self.locale = locale
        }

        public func format(_ value: PokemonType) -> String {
            if locale.languageCode == "ja" {
                value.japaneseName
            } else {
                value.englishName
            }
        }

        public func locale(_ locale: Locale) -> Self {
            var copy = self
            copy.locale = locale
            return copy
        }
    }

    public func formatted() -> String {
        formatted(.pokemonType)
    }

    public func formatted<F: Foundation.FormatStyle>(_ style: F) -> F.FormatOutput where F.FormatInput == Self {
        style.format(self)
    }
}

extension Foundation.FormatStyle where Self == PokemonType.FormatStyle {
    public static var pokemonType: Self {
        .init()
    }
}

private extension PokemonType {
    var englishName: String {
        switch self {
        case .normal: "Normal"
        case .fighting: "Fighting"
        case .flying: "Flying"
        case .poison: "Poison"
        case .bug: "Bug"
        case .steel: "Steel"
        case .psychic: "Psychic"
        case .ice: "Ice"
        case .dragon: "Dragon"
        case .dark: "Dark"
        case .fairy: "Fairy"
        case .fire: "Fire"
        case .water: "Water"
        case .grass: "Grass"
        case .electric: "Electric"
        case .ground: "Ground"
        case .rock: "Rock"
        case .ghost: "Ghost"
        }
    }

    var japaneseName: String {
        switch self {
        case .normal: "ノーマル"
        case .fighting: "かくとう"
        case .flying: "ひこう"
        case .poison: "どく"
        case .bug: "むし"
        case .steel: "はがね"
        case .psychic: "エスパー"
        case .ice: "こおり"
        case .dragon: "ドラゴン"
        case .dark: "あく"
        case .fairy: "フェアリー"
        case .fire: "ほのお"
        case .water: "みず"
        case .grass: "くさ"
        case .electric: "でんき"
        case .ground: "じめん"
        case .rock: "いわ"
        case .ghost: "ゴースト"
        }
    }
}
