//
//  WhatsNewPolicyTests.swift
//  PingWardenCoreTests
//
//  XCTest suite for WhatsNewPolicy: when the post-update offer appears and
//  which release-notes anchor it opens.
//

import Foundation
import XCTest
@testable import PingWardenCore

final class WhatsNewPolicyTests: XCTestCase {

    // MARK: - shouldOffer

    func testFreshInstallOffersNothing() {
        XCTAssertFalse(WhatsNewPolicy.shouldOffer(lastSeenVersion: nil, currentVersion: "4.1.8"))
    }

    func testSameVersionOffersNothing() {
        XCTAssertFalse(WhatsNewPolicy.shouldOffer(lastSeenVersion: "4.1.8", currentVersion: "4.1.8"))
    }

    func testDifferentVersionOffers() {
        XCTAssertTrue(WhatsNewPolicy.shouldOffer(lastSeenVersion: "4.1.7", currentVersion: "4.1.8"))
    }

    func testSurroundingWhitespaceIsIgnored() {
        XCTAssertFalse(WhatsNewPolicy.shouldOffer(lastSeenVersion: " 4.1.8\n", currentVersion: "4.1.8"))
    }

    // MARK: - releaseNotesURL

    func testAnchorForReleaseVersion() {
        XCTAssertEqual(
            WhatsNewPolicy.releaseNotesURL(for: "4.1.8")?.absoluteString,
            "https://pingwarden.app/docs/releases#ping-warden-418"
        )
    }

    func testBetaSuffixIsDroppedFromAnchor() {
        XCTAssertEqual(
            WhatsNewPolicy.releaseNotesURL(for: "4.2.0-beta.1")?.absoluteString,
            "https://pingwarden.app/docs/releases#ping-warden-420"
        )
    }

    func testVersionWithoutDigitsHasNoURL() {
        XCTAssertNil(WhatsNewPolicy.releaseNotesURL(for: "Unknown"))
    }
}
