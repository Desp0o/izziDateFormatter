// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum DateFormats: String {
    case MMM = "MMM"
    case MMMM = "MMMM"
    case DD = "dd"
    case D = "d"
    case EEE = "EEE"
    case EEEE = "EEEE"
    case EEEE_MMMM = "EEEE MMMM"
    case EEE_MMMM = "EEE MMMM"
    case EEEE_MMMM_dd_yyyy = "EEEE, MMMM dd yyyy"
    case EEE_MMM_dd_yyyy = "EEE, MMM dd yyyy"
    case yyyy_MM_dd = "yyyy-MM-dd"
    case MM_dd_yyyy = "MM/dd/yyyy"
    case dd_MM_yyyy = "dd.MM.yyyy"
    case dd_MMM_yyyy = "dd MMM yyyy"
    case dd_MMMM_yyyy = "dd MMMM yyyy"
    case HH_mm_ss = "HH:mm:ss"
    case hh_mm_a = "hh:mm a"
    case yyyy = "yyyy"
    case yy = "yy"
    case MM = "MM"
    case yyyyMMdd = "yyyyMMdd"
    case yyyy_MM_dd_HH_mm_ss = "yyyy-MM-dd HH:mm:ss"
    case yyyyMMdd_HHmmss = "yyyyMMdd_HHmmss"
    case MMM_dd_yyyy_HH_mm = "MMM dd, yyyy HH:mm"
    case MMM_d_yy = "MMM d, yy"
    case EEEE_dd_MM_yyyy = "EEEE dd.MM.yyyy"
    case MMMM_dd_comma_yyyy = "MMMM dd, yyyy"
    case dd_MMM_yy_HH_mm = "dd MMM yy HH:mm"
    case MMMM_dd_yyyy_at_HH_mm = "MMMM dd, yyyy 'at' HH:mm"
    case MMMM_dd_yyyy_hh_mm_a = "MMMM dd, yyyy hh:mm a"
    case yyyy_MM_dd_T_HH_mm_ss_Z = "yyyy-MM-dd'T'HH:mm:ssZ"
    case yyyy_MM_dd_T_HH_mm_ss_SSSZ = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    case EEEE_MMM_d = "EEEE, MMM d"
    case MMM_d = "MMM d"
    case d_MMMM = "d MMMM"
    case hh_mm_ss_SSS = "hh:mm:ss.SSS"
    case hh_mm_ss_a = "hh:mm:ss a"
    case HH_mm = "HH:mm"
    case h_mm_a = "h:mm a"
    case yyyy_slash_MM_slash_dd_HH_mm = "yyyy/MM/dd HH:mm"
    case yyyy_dash_MM_dash_dd_HH_mm_ss_SSS = "yyyy-MM-dd HH:mm:ss.SSS"
    case HH_mm_ss_SSS = "HH:mm:ss.SSS"
    case mm_ss = "mm:ss"
    case yyyy_MM_dd_HH_mm = "yyyy-MM-dd HH:mm"
    
    var format: String {
        return self.rawValue
    }
}

public protocol IzziDateFormatterProtocol {
    func formatDate(currentFormat: String, currentDate: String, format: String) -> String
}

public final class IzziDateFormatter: IzziDateFormatterProtocol {
    
    public init() { }
    
    public func formatDate(currentFormat: String, currentDate: String, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = currentFormat
        
        guard let date = formatter.date(from: currentDate) else { return String()}
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
}
