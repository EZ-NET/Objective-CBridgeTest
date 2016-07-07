
import Foundation

@objc(ESChartFolderType) protocol ChartFolderType {
    
    func open(patient: patientDataObject) -> ChartFolderType
}

extension ESChartFolder : ChartFolderType {
    
    func open(patient: patientDataObject) -> ChartFolderType {
        
        return ESChartFolder()
    }
}

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

let chart: ChartFolderType = ChartFolder().open(patient: patientDataObject())