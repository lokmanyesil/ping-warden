//
//  GameModeActivationPolicy.swift
//  PingWarden
//
//  Pure decision logic for Game Mode auto-detect. A game can be noticed two
//  ways: the frontmost app declares itself a game, or a game owns a
//  fullscreen window. The first needs no permission; the second needs Screen
//  Recording. Either is enough. Engagement is then gated on the network path,
//  because AWDL shares the Wi-Fi radio and cannot disturb a wired connection.
//

import Foundation

enum GameModeActivationPolicy {
    /// Coarse view of the primary network path.
    enum PathInterface: Equatable {
        case wifi
        case wired
        case other
        case unknown
    }

    /// System processes that take activation for a moment without the user
    /// leaving the game: permission prompts, password sheets, notification
    /// and Control Center overlays. `UserNotificationCenter` posts a real
    /// `didActivateApplication` notification when a permission alert appears,
    /// so a game with a dialog on top used to look like a lost focus and
    /// protection dropped mid-session, then flapped back when the dialog
    /// closed. The other entries are the same family, kept in step with
    /// `ignoredFullscreenOwners`.
    static let transientSystemUIBundleIdentifiers: Set<String> = [
        "com.apple.UserNotificationCenter",
        "com.apple.SecurityAgent",
        "com.apple.notificationcenterui",
        "com.apple.controlcenter",
        "com.apple.systemuiserver",
    ]

    /// Whether an activation event should replace the tracked frontmost app.
    /// A missing bundle identifier is tracked, since a game that lacks one
    /// would already fail the Info.plist check and read as "not a game".
    static func shouldTrackActivation(bundleIdentifier: String?) -> Bool {
        guard let bundleIdentifier else { return true }
        return !transientSystemUIBundleIdentifiers.contains(bundleIdentifier)
    }

    /// A game is present when either observation path sees one.
    static func gamePresent(frontmostIsGame: Bool, fullscreenGamePresent: Bool) -> Bool {
        frontmostIsGame || fullscreenGamePresent
    }

    /// A wired path skips engagement. An unknown or other path fails toward
    /// protection, since a wrong "no" costs the user a stuttering session and
    /// a wrong "yes" only costs them AirDrop until the game closes.
    static func shouldEngage(gamePresent: Bool, pathInterface: PathInterface) -> Bool {
        guard gamePresent else { return false }
        return pathInterface != .wired
    }

    static func shouldEngage(
        frontmostIsGame: Bool,
        fullscreenGamePresent: Bool,
        pathInterface: PathInterface
    ) -> Bool {
        shouldEngage(
            gamePresent: gamePresent(
                frontmostIsGame: frontmostIsGame,
                fullscreenGamePresent: fullscreenGamePresent
            ),
            pathInterface: pathInterface
        )
    }
}
