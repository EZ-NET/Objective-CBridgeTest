/*
 Objective-C ブリッジを使った
 Swift データ型と Objective-C データ型とのシームレスな変換
 
 String と NSString との変換と同じ手法
 */

import Foundation

@objc(ESTestInterfaceBySwift) class TestInterface : NSObject {
    
    // ChartFolder 自体は構造体ですが、Objective-C ブリッジに対応させることで、
    // Objective-C では、対応する型である ESChartFolder としてインポートされる。
    var foo: ChartFolder {
        
        return ChartFolder()
    }
}

/// Swift 用のデータ構造は構造体で作る。
/// この Swift ネイティブな ChartFolder と、
/// Objective-C ネイティブな ESChartFolder とをブリッジする。
struct ChartFolder {
    
}

/// Objective-C 用のデータ構造に、Swift 用のデータ構造からの変換イニシャライザを用意する。
private extension ESChartFolder {
    
    convenience init(_ source: ChartFolder) {
        self.init()
    }
}

/// Swift 用のデータ構造に、Objective-C 用のデータ構造からの変換イニシャライザを用意する。
private extension ChartFolder {
    
    init(_ source: ESChartFolder) {
    }
}

/// Swift の ChartFolder 構造体を Objective-C の ESChartFolder クラスと相互にブリッジできるようにする。
extension ChartFolder : _ObjectiveCBridgeable {
    
    typealias _ObjectiveCType = ESChartFolder
    
    static func _isBridgedToObjectiveC() -> Bool {
        
        return true
    }
    
    static func _getObjectiveCType() -> Any.Type {
        
        return ESChartFolder.self
    }
    
    func _bridgeToObjectiveC() -> ESChartFolder {
        
        return ESChartFolder(self)
    }
    
    static func _forceBridgeFromObjectiveC(_ source: ESChartFolder, result: inout ChartFolder?) {
        
        result = ChartFolder(source)
    }
    
    static func _conditionallyBridgeFromObjectiveC(_ source: ESChartFolder, result: inout ChartFolder?) -> Bool {
        
        result = ChartFolder(source)
        return true
    }
    
    static func _unconditionallyBridgeFromObjectiveC(_ source: ESChartFolder?)
        -> ChartFolder {
            
            return ChartFolder(source!)
    }
}

// ESChartFolder から ChartFolder へブリッジできる。
let instanceA = ESChartFolder()
let instanceB = instanceA as ChartFolder

// ChartFolder から ESChartFolder へブリッジできる。
let instanceC = ChartFolder()
let instanceD = instanceC as ESChartFolder


