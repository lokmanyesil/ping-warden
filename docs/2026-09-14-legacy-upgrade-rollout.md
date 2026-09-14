# Legacy upgrade rollout, September 14, 2026

Author: Oliver Ames

- [x] Confirmed v2.0.3 and v2.0.4 updater code is commented out. Version 2.0.5 imports Sparkle but has an empty SUPublicEDKey in its tagged Info.plist. Manual download is the recommended path through 2.0.5.
- [x] Updated README, website FAQ, and upgrade guide with the manual-download boundary, later-version fallback, and conditional 90-day transition. Rebuilt generated pages and passed all site checks.
- [x] Updated and verified 22 legacy GitHub release banners, including 20 v2 releases and two v3 releases. Preserved historical release text below the notice.
- [x] Updated existing Discussion #77 with the same upgrade guidance, preserving its title and discussion identity.
- [x] Updated the existing Reddit reply to MidniteCowby at https://old.reddit.com/r/GeForceNOW/comments/1w153td/gfn_on_macos/p9sl0d8/ with the exact manual route and corrected the earlier blanket claim about versions before 3.
- [x] Expanded Oliver's existing announcement-thread comment at https://old.reddit.com/r/GeForceNOW/comments/1qwuljh/mac_users_ping_warden_update_now_notarized_by/p9si0ei/ with manual installation and licensing details. Both saved edits were inspected afterward. No new Reddit comments were submitted.
- [x] Read-only Sparkle audit verified signatures for both live stable and beta feeds, with no configuration issues reported. The audit used repository configuration and the configured public key. It is not an end-to-end test of every historical installed binary.

The original announcement belongs to the older u/oliverames account, while this browser is signed in as u/upandolli. Its original post body cannot be edited through this login. The existing follow-up comment and destination release banner now carry the upgrade notice.

No feed content or update-consent setting was changed. The current feed already offers 4.x. Historical installations without a working updater cannot receive a remote upgrade notice through it. No app release is needed for these documentation changes. Previous release follow-up remains tracked in issue #78. The earlier broad reply sweep stays stopped.
