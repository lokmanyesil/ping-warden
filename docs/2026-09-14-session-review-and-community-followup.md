# Session review and community follow-up, September 14, 2026

This review reconciles the supplied conversation, repository history through 62e060a, current GitHub API results, and Reddit pages inspected in Chrome. It is a bounded search, not an exhaustive index of Reddit. Social replies below remain drafts for Oliver Ames to publish.

## Request and completion ledger

| Requested work | State and evidence | Remaining work |
| --- | --- | --- |
| Security, performance, licensing, and advertised-functionality review | Earlier session completed the review and committed helper-state confirmation, UUID caching, clock-write throttling, architecture reporting, target caching, session sample filtering, CI coverage, and documentation corrections. | The review is not a proof that no defects remain. Live-game testing is still [#64](https://github.com/oliverames/ping-warden/issues/64). |
| Release those fixes | [v4.1.8](https://github.com/oliverames/ping-warden/releases/tag/v4.1.8) is the current GitHub release, published September 14. Earlier release records include signing, notarization, signed appcasts, Sentry, and successful Gumroad retry. | This pass verified GitHub metadata, not a second notarization or storefront download. |
| Fix Gumroad timeout, #76 | [#76](https://github.com/oliverames/ping-warden/issues/76) is closed. Publisher has a 300-second configured wait budget and release-script override. | Verify unattended publication during the next release. |
| Add site rebuild to release.sh, #74 | [#74](https://github.com/oliverames/ping-warden/issues/74) is closed. Site preflight is committed after the release. | Next release exercises the whole revised workflow. |
| Improve discovery for existing users | All 20 v2 release bodies have opening banners. [Discussion #77](https://github.com/oliverames/ping-warden/discussions/77) exists with upgrade guidance. Pinning was verified earlier, not repeated in this pass. | Avoid interpreting download totals as the installed-user population. |
| Announce version 4 only | The published announcements concern version 4. No version 3 announcement was newly requested. | Existing links to version 3 need upgrade context, not a new version 3 campaign. |
| Remove donation requests and badges | README donation badges and FUNDING configuration are removed. Earlier work removed standalone donation links in old release bodies. Historical donor-license instructions remain. | Settings/About removal is committed after v4.1.8 and needs the next app release. |
| Fresh screenshots | Five v4 screenshots are committed. README uses the current dashboard image. | Website hero refresh was optional and remains separate. The current macgaming post has no screenshot link, so do not overwrite the user's published copy to restore an earlier draft. |
| What's New | Source and seven policy tests are committed after v4.1.8. | Live UI verification and release remain. First installation records a baseline, so this does not immediately notify all existing users. |
| Review response and request audit | Earlier Gmail audit found eight requests sent September 10 and prepared two missing requests. A Gumroad review response was drafted. | Current sent/submitted status was not rechecked. Do not resend based only on the earlier snapshot. |
| Reddit drafts and posting audit | Current profile confirms seven submissions and the App Pile comment, including the later Luna and Steam Link posts. | Qualify public claims, respect removals, and check approval before reusing earlier promotional drafts. |
| Other forums and streaming services | Luna and Steam Link posts were published by Oliver. xCloud and Amazon Luna contain organic recommendations. | xCloud bars self-promotion. Boosteroid bars AI-assisted posts/comments. Other earlier candidates still need explicit policy clearance or human-authored copy. |
| Reply to mentions and Moonlight issue | Three focused replies are prepared in Chrome and saved in the companion draft file. | Oliver reviews and publishes. Most historical recommendations do not need a reply. |
| Homebrew and outside outreach | Cask exists in Homebrew/ping-warden.rb. Earlier Medium outreach and Show HN were drafts only. | No official cask submission, personal tap, directory listing, or outreach publication is confirmed. Do not arrange a proxy submission to bypass owner-specific review criteria. |

Repository follow-up is tracked in [#78](https://github.com/oliverames/ping-warden/issues/78). Dependency PRs #72, #73, and #75 remain open and were not merged in this pass.

## What was actually posted

The profile at [u/upandolli](https://old.reddit.com/user/upandolli/) shows these eight items. Visibility below reflects the author's browser, not an independent logged-out test.

| Community | Item | Current evidence |
| --- | --- | --- |
| macgaming | [1wg8ifh](https://www.reddit.com/r/macgaming/comments/1wg8ifh/) | Body renders, Self promotion flair, no removal notice observed. |
| macapps | [p9s75my](https://www.reddit.com/r/macapps/comments/1w4brkd/comment/p9s75my/) | App Pile comment appears in profile and comment search. |
| LunaCloudGaming | [1wg8x1x](https://www.reddit.com/r/LunaCloudGaming/comments/1wg8x1x/) | Body renders, Discussion flair, no removal notice observed. |
| Steam_Link | [1wg8wq6](https://www.reddit.com/r/Steam_Link/comments/1wg8wq6/) | Body renders, Other flair, no removal notice observed. |
| MacOS | [1wg8jwg](https://www.reddit.com/r/MacOS/comments/1wg8jwg/) | Explicit moderator-removal notice. No specific reason supplied. |
| ParsecGaming | [1wg8jhd](https://www.reddit.com/r/ParsecGaming/comments/1wg8jhd/) | Explicit Reddit-filter removal notice. |
| MoonlightStreaming | [1wg8j20](https://www.reddit.com/r/MoonlightStreaming/comments/1wg8j20/) | Earlier audit recorded Reddit removal. Current page did not yield a conclusive removal signal. |
| cloudygamer | [1wg8iuy](https://www.reddit.com/r/cloudygamer/comments/1wg8iuy/) | Earlier audit recorded Reddit removal. Current page did not yield a conclusive removal signal. |

The earlier audit wrongly called September 14 Sunday and recommended September 20 for Saturday-only posts. September 14, 2026 is Monday. The next Saturday is September 19 UTC. The [MacOS rule](https://old.reddit.com/r/MacOS/about/rules) permits promotion only on Saturdays, but that does not establish the removal reason or authorize a repost.

## Corrections needed in community copy

These are editorial findings from the requested audit, tracked in #78. Existing posts were not edited or resubmitted.

- Replace claims that periodic stutters are usually AWDL, that every channel hop causes a spike, or that a command will make spikes disappear. AWDL is one possible contributor.
- Remove unmeasured guarantees that the helper reacts instantly or within milliseconds.
- Qualify Ethernet skipping as Game Mode auto-detection behavior. Do not claim that manual protection always stays off on Ethernet.
- Explain that starting a Latency Session enables protection and requires a license or active transition. Session history remains free.
- Replace the MacOS post's blanket “Nothing leaves your Mac” with the actual privacy boundary. Update checks, license verification, target discovery, probes, and optional crash reports are outbound requests.
- Describe restoration of the previous protection state when a detected game ends, rather than promising that protection always switches off.
- The counter increments before the helper attempts to lower AWDL. It is neither a count of measured spikes prevented nor a confirmation that every operation succeeded.

The source for the last point is PingWarden/PingWardenHelper/PingWardenMonitor.m, around lines 297–303. The README describes the outbound requests and license terms.

## Mention audit

Built-in web searches returned unrelated game-character results. Authenticated Reddit comment searches for both “ping-warden” and “Ping Warden” returned the relevant results below. Search ranking, deleted/private content, and incomplete indexing limit coverage. Search-result excerpts establish that a mention exists, not the complete context or truth of the recommendation.

| Thread or comment | Finding | Recommended action |
| --- | --- | --- |
| [Ping Warden, help me understand ping spikes](https://old.reddit.com/r/GeForceNOW/comments/1u0hbl9/) | Full four-comment thread read. The author still asks what the counter blocks. No developer answer appears. | Draft prepared explaining intervention attempts and requesting versions and comparative measurements. |
| [GFN on MacOS, p6krlv1](https://old.reddit.com/r/GeForceNOW/comments/1w153td/gfn_on_macos/p6krlv1/?context=3) | Full relevant branch read. It names Ping Warden but links James Howard's AWDLControl. | Short correction drafted under that comment, acknowledging that a working alternative need not be replaced. |
| [xCloud on MacBook, p5i48sl](https://www.reddit.com/r/xcloud/comments/1vu8548/experiences_with_xcloud_on_macbook/p5i48sl/) | Organic recommendation. | No promotional reply. |
| [xCloud Mac/Chrome, p4htp2w](https://www.reddit.com/r/xcloud/comments/1s3gns9/xbox_cloud_gaming_on_macchrome_starts_stuttering/p4htp2w/) and [p4htjhl](https://www.reddit.com/r/xcloud/comments/1s3gns9/xbox_cloud_gaming_on_macchrome_starts_stuttering/p4htjhl/) | Same user reports success with Safari and Ping Warden twice. | No duplicate thank-you or pitch. |
| [Amazon Luna, p75s91a](https://www.reddit.com/r/amazonluna/comments/1veddxc/fc_27_is_coming_to_luna_officially/p75s91a/) | French-language report of improvement on M4 MacBook Air, linking v3.1.0. | Relevant evidence for audience selection. No promotional reply under the previously reviewed product-promotion restriction. |
| [GFN recommendation, p6e3q43](https://www.reddit.com/r/GeForceNOW/comments/1w0a6x5/omfg_mind_blown/p6e3q43/) | Recommendation links the repository. | Leave unless someone asks for help. |
| [AirDrop PSA, opssbuo](https://www.reddit.com/r/GeForceNOW/comments/1twwg4y/psa_if_youre_on_a_mac_and_using_gfn_on_wifi_turn/opssbuo/) | Historical recommendation. | No need to revive solely for promotion. |
| [Rust stutter, oyw2c2v](https://www.reddit.com/r/GeForceNOW/comments/1v2jddr/playing_rust_on_4080_pcs_in_my_country_and_there/oyw2c2v/) | Suggestion by someone who says they do not own a Mac. | Do not treat as a verified product outcome. |
| [MacBook Pro, o4i3jgr](https://www.reddit.com/r/macbookpro/comments/1qzlg19/dropped_packets_and_packet_loss_with_mbp_m4/o4i3jgr/) and [Tahoe, o4i3u9f](https://www.reddit.com/r/macOS26Tahoe/comments/1qzlh2r/dropped_packets_and_packet_loss_with_mbp_m4/o4i3u9f/) | Same user's historical success report in two communities. | Deduplicate as one reported experience, no mass reply. |
| [Huge ping spikes, o48dkn0](https://www.reddit.com/r/GeForceNOW/comments/1qyfeyx/huge_random_ping_spikes_from_3_to_925/o48dkn0/) | Historical recommendation points to an older announcement. | Upgrade banners already help readers who follow through to releases. |
| [Older announcement, o3vuq13](https://www.reddit.com/r/GeForceNOW/comments/1qwuljh/mac_users_ping_warden_update_now_notarized_by/o3vuq13/) | Deleted account's historic troubleshooting comment mentions 2.0.5. | Do not attribute the deleted account without independent evidence. |
| [Developer collaboration, oz2d7wi](https://www.reddit.com/r/macgaming/comments/1v3cop7/that_periodic_stutter_in_geforce_now_is_often/oz2d7wi/) | Mentions Ping Warden among alternatives and asks developers to collaborate. | Possible technical discussion, not a place to paste an advertisement. |
| App Pile comment | Oliver's own announcement. | Excluded from independent recommendations. |

Earlier post-search candidates, not re-read in full here: macgaming 1waj6tv, MoonlightStreaming 1w2gzmu, MacNeoGaming 1u3nvl4, GeForceNOW 1tto2no, 1rmch0f, 1u8fa63, and 1uvhnuz. These remain a lower-priority context-review queue, not approved reply destinations.

## Moonlight response

[Issue #159](https://github.com/moonlight-stream/moonlight-qt/issues/159) is open with 157 comments. All comments were retrieved through the GitHub API, and the relevant recent comments and Oliver's earlier contribution were read.

Oliver [commented in December 2023](https://github.com/moonlight-stream/moonlight-qt/issues/159#issuecomment-1858158670) about Universal Control on Sonoma. The draft follows that history, discloses authorship and pricing, and limits the workaround to AWDL-related Wi-Fi symptoms. Other commenters report Ethernet stutters and improvements from a different client/build. The draft therefore avoids calling AWDL the cause of the entire issue and does not claim macOS 27 beta validation.

## Other candidate forums

- [xCloud rules](https://old.reddit.com/r/xcloud/about/rules) currently prohibit self-promotion and unofficial download links. Existing organic recommendations do not waive those rules.
- [BoosteroidCommunity rules](https://old.reddit.com/r/BoosteroidCommunity/about/rules) explicitly prohibit AI-assisted posts and comments, as well as advertising without applicable approval. Do not publish the earlier AI-assisted draft there.
- LunaCloudGaming and Steam_Link already received posts, so another announcement would duplicate today's work.
- GeForceNOW's earlier approval requirement remains relevant to a new promotional post. The two prepared support/correction replies address existing product mentions and include no purchase pitch.
- Parsec, MoonlightStreaming, and cloudygamer moderator-review drafts from the earlier session need the removal reason qualified. Do not assert that the spam algorithm or posting frequency caused removal.
- MacRumors policy clearance, MPU Talk moderator guidance, Show HN, Medium outreach, AlternativeTo/MacUpdate listings, and a personal Homebrew tap are uncompleted options, not published results.

## Verification and next actions

The website check passed: 13 HTML pages, structured JSON, local links and anchors, 12 sitemap URLs, and two worker tests. All 145 core tests and all 10 release-tool tests passed. The latter used the repository's direct test script. An initial unittest invocation used the wrong import path and was corrected.

Keep the three prepared reply tabs open for Oliver. Review the companion draft file before using any replacement announcement text. Do not send duplicate review requests or claim the earlier Gumroad response was submitted without checking its current status.

