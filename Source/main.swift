//#!/usr/bin/swift -F Carthage/Build/Mac
//
//  main.swift
//  SwiftMockGenerator
//
//  Created by Tadeas Kriz on 12/01/16.
//  Copyright © 2016 Brightify. All rights reserved.
//

import Commandant
import CuckooGeneratorFramework

let registry = CommandRegistry<CuckooGeneratorError>()
registry.register(GenerateMocksCommand())
registry.register(RuntimeCommand())
registry.register(VersionCommand())

let helpCommand = HelpCommand(registry: registry)
registry.register(helpCommand)

registry.main(defaultVerb: helpCommand.verb) { error in
    fputs(error.description + "\n", stderr)
}