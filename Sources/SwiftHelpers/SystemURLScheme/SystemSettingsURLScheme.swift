//
//  SystemSettingsURLScheme.swift
//  SwiftHelpers/SystemSettingsURLScheme
//
//  Created by Leo Ho on 2024/1/1.
//

import Foundation

/// URL Scheme of System Settings
public enum SystemSettingsURLScheme {
    
    /// About
    case about
    
    /// Airplane Mode
    case airplaneMode
    /// App Store
    case appStore
    
    /// Auto Lock
    case autolock
    
    /// Bluetooth
    case bluetooth
    
    /// Date and Time
    case dateAndTime
    
    /// Do not Disturb
    case doNotDisturb
    
    /// Facetime
    case facetime
    
    /// General
    case general
    
    /// iCloud
    case iCloud
    
    /// Language and Region
    case languageAndRegion
    
    /// Keyboard
    case keyboard
    
    /// Managed Configuration List
    case managedConfigurationList
    
    /// Music
    case music
    
    /// Notes
    case notes
    
    /// Notifications
    case notificationsId
    
    /// Passwords
    case passwords
    
    /// Personal Hotspot
    case personalHotspot
    
    /// Phone
    case phone
    
    /// Photos
    case photos
    
    /// Reset
    case reset
    
    /// Ringtone
    case ringtone
    
    /// Settings
    case settings
    
    /// Software Update
    case softwareUpdate
    
    /// Sounds
    case sounds
    
    /// iCloud
    case storageAndBackup
    
    /// Wallpaper
    case wallpaper
    
    /// Wi-Fi
    case wifi
    
    public var url: URL {
        switch self {
        case .about: URL(string: "App-prefs:General&path=About")!
        case .airplaneMode: URL(string: "App-prefs:AIRPLANE_MODE")!
        case .appStore: URL(string: "App-prefs:STORE")!
        case .autolock: URL(string: "App-prefs:General&path=AUTOLOCK")!
        case .bluetooth: URL(string: "App-prefs:Bluetooth")!
        case .dateAndTime: URL(string: "App-prefs:General&path=DATE_AND_TIME")!
        case .doNotDisturb: URL(string: "App-prefs:DO_NOT_DISTURB")!
        case .facetime: URL(string: "App-prefs:FACETIME")!
        case .general: URL(string: "App-prefs:General")!
        case .iCloud: URL(string: "App-prefs:CASTLE")!
        case .languageAndRegion: URL(string: "App-prefs:General&path=INTERNATIONAL")!
        case .keyboard: URL(string: "App-prefs:General&path=Keyboard")!
        case .managedConfigurationList: URL(string: "App-prefs:General&path=ManagedConfigurationList")!
        case .music: URL(string: "App-prefs:MUSIC")!
        case .notes: URL(string: "App-prefs:NOTES")!
        case .notificationsId: URL(string: "App-prefs:NOTIFICATIONS_ID")!
        case .passwords: URL(string: "App-prefs:PASSWORDS")!
        case .personalHotspot: URL(string: "App-prefs:INTERNET_TETHERING")!
        case .phone: URL(string: "App-prefs:Phone")!
        case .photos: URL(string: "App-prefs:Photos")!
        case .reset: URL(string: "App-prefs:General&path=Reset")!
        case .ringtone: URL(string: "App-prefs:Sounds&path=Ringtone")!
        case .settings: URL(string: "App-prefs:Settings")!
        case .softwareUpdate: URL(string: "App-prefs:General&path=SOFTWARE_UPDATE_LINK")!
        case .sounds: URL(string: "App-prefs:Sounds")!
        case .storageAndBackup: URL(string: "App-prefs:CASTLE&path=STORAGE_AND_BACKUP")!
        case .wallpaper: URL(string: "App-prefs:Wallpaper")!
        case .wifi: URL(string: "App-prefs:WIFI")!
        }
    }
}
