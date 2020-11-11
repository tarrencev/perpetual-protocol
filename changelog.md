# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.12.4] - 2020-11-02
### Added
- add `Amm::getUnderlyingTwapPrice` #16

### Changed
- the definition of `ClearingHouse::getPosition` has changed (the size becomes dynamic after liquidity migration) #5
- the params of event `ClearingHouse::PositionAdjusted` has changed (`oldLiquidityBasis` -> `oldLiquidityIndex`, `newLiquidityBasis` -> `newLiquidityIndex`) #5
- the params of struct `ClearingHouse::Position` has changed (`liquidityBasis` -> `liquidityHistoryIndex`) #5

### Removed