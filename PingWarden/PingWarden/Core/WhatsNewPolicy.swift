//
//  WhatsNewPolicy.swift
//  PingWarden
//
//  Pure decision logic for the post-update "What's New" offer. Sparkle shows
//  release notes only before an update installs, so after the relaunch
//  nothing in the app says what changed. This decides whether to offer the
//  notes for the running version and where they live on the website.
//

import Foundation

enum WhatsNewPolicy {
    /// Every release shares one page; each version has a heading whose id is
    /// the version's digits, so 4.1.8 is `#ping-warden-418`.
    static let releasesPageURL = URL(string: "https://pingwarden.app/docs/releases")!

    /// The releases page scrolled to `version`. A pre-release suffix such as
    /// `-beta.1` is dropped because the published heading carries only the
    /// base version. Nil when the version has no digits at all.
    static func releaseNotesURL(for version: String) -> URL? {
        let base = version.trimmingCharacters(in: .whitespacesAndNewlines).prefix { $0 != "-" }
        let digits = base.filter { $0.isASCII && $0.isNumber }
        guard !digits.isEmpty else { return nil }
        return URL(string: "\(releasesPageURL.absoluteString)#ping-warden-\(digits)")
    }

    /// Offer only after an update. A nil `lastSeenVersion` is a fresh install
    /// with nothing to catch up on; the caller records the baseline instead.
    /// Plain string comparison is enough: the stored value only ever comes
    /// from an earlier bundle version, so any difference means a change.
    static func shouldOffer(lastSeenVersion: String?, currentVersion: String) -> Bool {
        guard let lastSeenVersion else { return false }
        return lastSeenVersion.trimmingCharacters(in: .whitespacesAndNewlines)
            != currentVersion.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
