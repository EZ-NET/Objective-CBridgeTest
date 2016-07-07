/*
 Objective-C 互換プロトコル型を使った、
 Objective-C 互換な Swift データ型と Objective-C データ型との混在運用
 */

import Foundation

/// このプロトコル型で、Objective-C データ型も Swift データ型も扱う。
/// 共通インターフェイスとして設計する必要がある。
@objc(ESChartFolderType) protocol ChartFolderType {
    
    /// 戻り値の型をプロトコル型で扱うことで、どちらであっても扱えるようにする。
    func open(patient: patientDataObject) -> ChartFolderType
}

extension ESChartFolder : ChartFolderType {
    
    func open(patient: patientDataObject) -> ChartFolderType {
        
        return ESChartFolder()
    }
}

/// Swift で使うデータ型。
/// Objective-C 環境およびそこで定義された ESChartFolder との混在を考慮し、
/// NSObject を継承している。
class ChartFolder : NSObject, ChartFolderType {
    
    func open(patient: patientDataObject) -> ChartFolderType {
        
        switch patient.kind {
            
        case 1:
            return ChartFolder()
            
        default:
            return ESChartFolder()
        }
    }
}

/// 扱うときは、プロトコル型で扱う。
/// ネイティブな機能を使いたければ、ダウンキャストが必要になる。
let chart: ChartFolderType = ChartFolder().open(patient: patientDataObject())
