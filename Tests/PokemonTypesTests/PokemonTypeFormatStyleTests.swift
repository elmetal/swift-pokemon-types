import Foundation
import Testing
@testable import PokemonTypes

struct PokemonTypeFormatStyleTests {
    @Test
    func formattedUsesEnglishByDefaultForNonJapaneseLocale() {
        #expect(PokemonType.fire.formatted(.pokemonType.locale(Locale(identifier: "en_US"))) == "Fire")
    }

    @Test
    func formattedUsesJapaneseForJapaneseLocale() {
        #expect(PokemonType.fire.formatted(.pokemonType.locale(Locale(identifier: "ja_JP"))) == "ほのお")
    }

    @Test
    func formattedWithoutArgumentsReturnsAString() {
        let string: String = PokemonType.water.formatted()

        #expect(!string.isEmpty)
    }
}
