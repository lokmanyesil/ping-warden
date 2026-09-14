# Community reply drafts, September 14, 2026

Prepared for Oliver Ames. These drafts are not published. The added editorial approach is to answer concrete questions, disclose authorship, and qualify technical claims. Oliver should review these substantive additions before posting.

## Moonlight issue #159

Destination: https://github.com/moonlight-stream/moonlight-qt/issues/159

I commented here in December 2023 about disabling Universal Control on Sonoma. Since then I've built [Ping Warden](https://github.com/oliverames/ping-warden), a macOS menu bar app for the AWDL side of this problem.

Its privileged helper watches interface events and takes awdl0 back down when macOS raises it while protection is enabled. The tradeoff is that AirDrop and other AWDL-dependent features are unavailable until you stop or pause protection.

This is a workaround for AWDL-related Wi-Fi interference. The Ethernet reports and reports of improvement with a different Moonlight build in this thread point to other causes too, so I wouldn't expect it to address every stutter reported here. The intervention counter records attempts to keep AWDL down, not measured ping spikes prevented.

Disclosure: I maintain the app. The source is MIT-licensed. The prebuilt app's protection feature costs $15 once, while its dashboard and diagnostics are free. I don't have a verified macOS 27 beta compatibility result to answer the latest question.

## GeForce NOW intervention-counter question

Destination: https://old.reddit.com/r/GeForceNOW/comments/1u0hbl9/

I'm the developer of Ping Warden. You're right to question what that counter means. It counts the helper reacting to awdl0 coming up and attempting to bring it back down. It doesn't measure how many ping spikes were prevented, and a rising count doesn't prove your connection is stable.

Your report of spikes when an iPhone is nearby is useful, but it doesn't establish the cause by itself. Ping Warden only addresses the AWDL part of the problem, so you can still have lag or packet loss while it's enabled.

If you're still seeing this, which macOS and Ping Warden versions are you using? A comparison of the same game with protection on and off, together with GFN's network statistics, would help us see whether it's improving anything on your setup.

## GeForce NOW app-name correction

Destination: https://old.reddit.com/r/GeForceNOW/comments/1w153td/gfn_on_macos/p6krlv1/?context=3

I maintain Ping Warden, and the name and link here point to two different projects. Your link is James Howard's AWDLControl. Ping Warden is at https://github.com/oliverames/ping-warden. If AWDLControl is the app that's working for you, there's no need to switch.

## Suggested clarification for the already-posted Luna and Steam Link announcements

This is replacement clarification copy for review, not a new post or an applied edit.

AWDL can contribute to Wi-Fi stutters on a Mac, but a repeating hitch doesn't establish the cause. Ping Warden watches for awdl0 coming back up and attempts to keep it down while protection is enabled. Compare the stream with protection on and off to see whether it helps your setup.

Game Mode skips automatic activation on Ethernet. For browser streaming, turn protection on manually before playing. AirDrop and other AWDL-dependent features are unavailable until you stop or pause protection.

The dashboard, diagnostics, and past session recaps are free. Enabling protection, including starting a new Latency Session, needs the one-time $15 license or an active transition in the prebuilt app. The source remains MIT-licensed.

