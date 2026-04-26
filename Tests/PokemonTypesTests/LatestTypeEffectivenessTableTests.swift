import Testing
@testable import PokemonTypes


struct LatestTypeEffectivenessTableTests {
    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingNormal(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()
        
        switch defendingType {
        case .ghost:
            #expect(table.effectiveness(of: .normal, against: defendingType) == .ineffective)
        case .rock, .steel:
            #expect(table.effectiveness(of: .normal, against: defendingType) == .notVeryEffective)
        case .normal,
             .fighting,
             .flying,
             .poison,
             .bug,
             .psychic,
             .ice,
             .dragon,
             .dark,
             .fairy,
             .fire,
             .water,
             .grass,
             .electric,
             .ground:
            #expect(table.effectiveness(of: .normal, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingFighting(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .ghost:
            #expect(table.effectiveness(of: .fighting, against: defendingType) == .ineffective)
        case .flying, .poison, .bug, .psychic, .fairy:
            #expect(table.effectiveness(of: .fighting, against: defendingType) == .notVeryEffective)
        case .normal, .steel, .ice, .dark, .rock:
            #expect(table.effectiveness(of: .fighting, against: defendingType) == .superEffective)
        case .fighting, .dragon, .fire, .water, .grass, .electric, .ground:
            #expect(table.effectiveness(of: .fighting, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingFlying(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .rock, .steel, .electric:
            #expect(table.effectiveness(of: .flying, against: defendingType) == .notVeryEffective)
        case .fighting, .bug, .grass:
            #expect(table.effectiveness(of: .flying, against: defendingType) == .superEffective)
        case .normal,
             .flying,
             .poison,
             .psychic,
             .ice,
             .dragon,
             .dark,
             .fairy,
             .fire,
             .water,
             .ground,
             .ghost:
            #expect(table.effectiveness(of: .flying, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingPoison(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .steel:
            #expect(table.effectiveness(of: .poison, against: defendingType) == .ineffective)
        case .poison, .ground, .rock, .ghost:
            #expect(table.effectiveness(of: .poison, against: defendingType) == .notVeryEffective)
        case .fairy, .grass:
            #expect(table.effectiveness(of: .poison, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .flying,
             .bug,
             .psychic,
             .ice,
             .dragon,
             .dark,
             .fire,
             .water,
             .electric:
            #expect(table.effectiveness(of: .poison, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingBug(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .fighting, .flying, .poison, .ghost, .steel, .fire, .fairy:
            #expect(table.effectiveness(of: .bug, against: defendingType) == .notVeryEffective)
        case .psychic, .dark, .grass:
            #expect(table.effectiveness(of: .bug, against: defendingType) == .superEffective)
        case .normal, .bug, .ice, .dragon, .water, .electric, .ground, .rock:
            #expect(table.effectiveness(of: .bug, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingSteel(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .steel, .fire, .water, .electric:
            #expect(table.effectiveness(of: .steel, against: defendingType) == .notVeryEffective)
        case .fairy, .ice, .rock:
            #expect(table.effectiveness(of: .steel, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .flying,
             .poison,
             .bug,
             .psychic,
             .dragon,
             .dark,
             .grass,
             .ground,
             .ghost:
            #expect(table.effectiveness(of: .steel, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingPsychic(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .dark:
            #expect(table.effectiveness(of: .psychic, against: defendingType) == .ineffective)
        case .steel, .psychic:
            #expect(table.effectiveness(of: .psychic, against: defendingType) == .notVeryEffective)
        case .fighting, .poison:
            #expect(table.effectiveness(of: .psychic, against: defendingType) == .superEffective)
        case .normal,
             .flying,
             .bug,
             .ice,
             .dragon,
             .fairy,
             .fire,
             .water,
             .grass,
             .electric,
             .ground,
             .rock,
             .ghost:
            #expect(table.effectiveness(of: .psychic, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingIce(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .steel, .fire, .water, .ice:
            #expect(table.effectiveness(of: .ice, against: defendingType) == .notVeryEffective)
        case .flying, .dragon, .grass, .ground:
            #expect(table.effectiveness(of: .ice, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .poison,
             .bug,
             .psychic,
             .dark,
             .fairy,
             .electric,
             .rock,
             .ghost:
            #expect(table.effectiveness(of: .ice, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingDragon(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .fairy:
            #expect(table.effectiveness(of: .dragon, against: defendingType) == .ineffective)
        case .steel:
            #expect(table.effectiveness(of: .dragon, against: defendingType) == .notVeryEffective)
        case .dragon:
            #expect(table.effectiveness(of: .dragon, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .flying,
             .poison,
             .bug,
             .psychic,
             .ice,
             .dark,
             .fire,
             .water,
             .grass,
             .electric,
             .ground,
             .rock,
             .ghost:
            #expect(table.effectiveness(of: .dragon, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingDark(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .fighting, .dark, .fairy:
            #expect(table.effectiveness(of: .dark, against: defendingType) == .notVeryEffective)
        case .ghost, .psychic:
            #expect(table.effectiveness(of: .dark, against: defendingType) == .superEffective)
        case .normal,
             .flying,
             .poison,
             .bug,
             .steel,
             .ice,
             .dragon,
             .fire,
             .water,
             .grass,
             .electric,
             .ground,
             .rock:
            #expect(table.effectiveness(of: .dark, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingFairy(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .poison, .steel, .fire:
            #expect(table.effectiveness(of: .fairy, against: defendingType) == .notVeryEffective)
        case .fighting, .dragon, .dark:
            #expect(table.effectiveness(of: .fairy, against: defendingType) == .superEffective)
        case .normal,
             .flying,
             .bug,
             .psychic,
             .ice,
             .fairy,
             .water,
             .grass,
             .electric,
             .ground,
             .rock,
             .ghost:
            #expect(table.effectiveness(of: .fairy, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingFire(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .rock, .fire, .water, .dragon:
            #expect(table.effectiveness(of: .fire, against: defendingType) == .notVeryEffective)
        case .bug, .steel, .ice, .grass:
            #expect(table.effectiveness(of: .fire, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .flying,
             .poison,
             .psychic,
             .dark,
             .fairy,
             .electric,
             .ground,
             .ghost:
            #expect(table.effectiveness(of: .fire, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingWater(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .water, .grass, .dragon:
            #expect(table.effectiveness(of: .water, against: defendingType) == .notVeryEffective)
        case .fire, .ground, .rock:
            #expect(table.effectiveness(of: .water, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .flying,
             .poison,
             .bug,
             .steel,
             .psychic,
             .ice,
             .dark,
             .fairy,
             .electric,
             .ghost:
            #expect(table.effectiveness(of: .water, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingGrass(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .flying, .poison, .bug, .steel, .fire, .grass, .dragon:
            #expect(table.effectiveness(of: .grass, against: defendingType) == .notVeryEffective)
        case .water, .ground, .rock:
            #expect(table.effectiveness(of: .grass, against: defendingType) == .superEffective)
        case .normal, .fighting, .psychic, .ice, .dark, .fairy, .electric, .ghost:
            #expect(table.effectiveness(of: .grass, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingElectric(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .ground:
            #expect(table.effectiveness(of: .electric, against: defendingType) == .ineffective)
        case .grass, .electric, .dragon:
            #expect(table.effectiveness(of: .electric, against: defendingType) == .notVeryEffective)
        case .flying, .water:
            #expect(table.effectiveness(of: .electric, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .poison,
             .bug,
             .steel,
             .psychic,
             .ice,
             .dark,
             .fairy,
             .fire,
             .rock,
             .ghost:
            #expect(table.effectiveness(of: .electric, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingGround(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .flying:
            #expect(table.effectiveness(of: .ground, against: defendingType) == .ineffective)
        case .bug, .grass:
            #expect(table.effectiveness(of: .ground, against: defendingType) == .notVeryEffective)
        case .poison, .steel, .fire, .electric, .rock:
            #expect(table.effectiveness(of: .ground, against: defendingType) == .superEffective)
        case .normal,
             .fighting,
             .psychic,
             .ice,
             .dragon,
             .dark,
             .fairy,
             .water,
             .ground,
             .ghost:
            #expect(table.effectiveness(of: .ground, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingRock(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .fighting, .ground, .steel:
            #expect(table.effectiveness(of: .rock, against: defendingType) == .notVeryEffective)
        case .flying, .bug, .fire, .ice:
            #expect(table.effectiveness(of: .rock, against: defendingType) == .superEffective)
        case .normal,
             .poison,
             .psychic,
             .dragon,
             .dark,
             .fairy,
             .water,
             .grass,
             .electric,
             .rock,
             .ghost:
            #expect(table.effectiveness(of: .rock, against: defendingType) == .neutral)
        }
    }

    @Test(arguments: PokemonTypeSet.latest.allCases())
    func attackingGhost(defendingType: PokemonType) {
        let table = LatestTypeEffectivenessTable()

        switch defendingType {
        case .normal:
            #expect(table.effectiveness(of: .ghost, against: defendingType) == .ineffective)
        case .dark:
            #expect(table.effectiveness(of: .ghost, against: defendingType) == .notVeryEffective)
        case .ghost, .psychic:
            #expect(table.effectiveness(of: .ghost, against: defendingType) == .superEffective)
        case .fighting,
             .flying,
             .poison,
             .bug,
             .steel,
             .ice,
             .dragon,
             .fairy,
             .fire,
             .water,
             .grass,
             .electric,
             .ground,
             .rock:
            #expect(table.effectiveness(of: .ghost, against: defendingType) == .neutral)
        }
    }
}
