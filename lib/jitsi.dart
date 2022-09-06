/* ------------------------------ Feature flags ----------------------------- */

/// Associative map with feature flags and their string values.
/// Reflects the official list of Jitsi Meet SDK 2.9.0 feature flags
/// https://github.com/jitsi/jitsi-meet/blob/master/react/features/base/flags/constants.js
class FeatureFlagHelper {
  static Map<FeatureFlagEnum, String> featureFlags = {
    FeatureFlagEnum.addPeopleEnabled: 'add-people.enabled',
    FeatureFlagEnum.androidScreensharingEnabled:
        'android.screensharing.enabled',
    FeatureFlagEnum.audioFocusDisabled: 'audio-focus.disabled',
    FeatureFlagEnum.audioMuteButtonEnabled: 'audio-mute.enabled',
    FeatureFlagEnum.audioOnlyButtonEnabled: 'audio-only.enabled',
    FeatureFlagEnum.calendarEnabled: 'calendar.enabled',
    FeatureFlagEnum.callIntegrationEnabled: 'call-integration.enabled',
    FeatureFlagEnum.chatEnabled: 'chat.enabled',
    FeatureFlagEnum.closeCaptionsEnabled: 'close-captions.enabled',
    FeatureFlagEnum.conferenceTimerEnabled: 'conference-timer.enabled',
    FeatureFlagEnum.filmstripEnabled: 'filmstrip.enabled',
    FeatureFlagEnum.fullscreenEnabled: 'fullscreen.enabled',
    FeatureFlagEnum.helpButtonEnabled: 'help.enabled',
    FeatureFlagEnum.inviteEnabled: 'invite.enabled',
    FeatureFlagEnum.iosRecordingEnabled: 'ios.recording.enabled',
    FeatureFlagEnum.iosScreensharingEnabled: 'ios.screensharing.enabled',
    FeatureFlagEnum.kickOutEnabled: 'kick-out.enabled',
    FeatureFlagEnum.liveStreamingEnabled: 'live-streaming.enabled',
    FeatureFlagEnum.lobbyModeEnabled: 'lobby-mode.enabled',
    FeatureFlagEnum.meetingNameEnabled: 'meeting-name.enabled',
    FeatureFlagEnum.meetingPasswordEnabled: 'meeting-password.enabled',
    FeatureFlagEnum.notificationsEnabled: 'notifications.enabled',
    FeatureFlagEnum.overflowMenuEnabled: 'overflow-menu.enabled',
    FeatureFlagEnum.pipEnabled: 'pip.enabled',
    FeatureFlagEnum.raiseHandEnabled: 'raise-hand.enabled',
    FeatureFlagEnum.reactionsEnabled: 'reactions.enabled',
    FeatureFlagEnum.recordingEnabled: 'recording.enabled',
    FeatureFlagEnum.replaceParticipant: 'replace.participant',
    FeatureFlagEnum.resolution: 'resolution',
    FeatureFlagEnum.securityOptionsEnabled: 'security-options.enabled',
    FeatureFlagEnum.serverUrlChangeEnabled: 'server-url-change.enabled',
    FeatureFlagEnum.speakerstatsEnabled: 'speakerstats.enabled',
    FeatureFlagEnum.tileViewEnabled: 'tile-view.enabled',
    FeatureFlagEnum.toolboxAlwaysVisible: 'toolbox.alwaysVisible',
    FeatureFlagEnum.toolboxEnabled: 'toolbox.enabled',
    FeatureFlagEnum.videoMuteButtonEnabled: 'video-mute.enabled',
    FeatureFlagEnum.videoShareButtonEnabled: 'video-share.enabled',
    FeatureFlagEnum.welcomePageEnabled: 'welcomepage.enabled',
  };
}

/// Enumeration of all available feature flags
/// Reflects the official list of Jitsi Meet SDK 2.9.0 feature flags
/// https://github.com/jitsi/jitsi-meet/blob/master/react/features/base/flags/constants.js
enum FeatureFlagEnum {
  /// Flag indicating if add-people functionality should be enabled.
  /// Default: enabled (true).
  addPeopleEnabled,

  /// Flag indicating if screen sharing should be enabled in android.
  /// Default: enabled (true).
  androidScreensharingEnabled,

  /// Flag indicating if the SDK should not require the audio focus.
  /// Used by apps that do not use Jitsi audio.
  /// Default: disabled (false).
  audioFocusDisabled,

  /// Flag indicating if the mute button should be enabled.
  /// Default: disabled (true).
  audioMuteButtonEnabled,

  /// Flag indicating that the Audio only button in the overflow menu is enabled.
  /// Default: enabled (true).
  audioOnlyButtonEnabled,

  /// Flag indicating if calendar integration should be enabled.
  /// Default: enabled (true) on Android, auto-detected on iOS.
  calendarEnabled,

  /// Flag indicating if call integration (CallKit on iOS,
  /// ConnectionService on Android)
  /// should be enabled.
  /// Default: enabled (true).
  callIntegrationEnabled,

  /// Flag indicating if chat should be enabled.
  /// Default: enabled (true).
  chatEnabled,

  /// Flag indicating if close captions should be enabled.
  /// Default: enabled (true).
  closeCaptionsEnabled,

  /// Flag indicating if conference timer should be enabled.
  /// Default: enabled (true).
  conferenceTimerEnabled,

  /// Flag indicating if the filmstrip should be enabled.
  /// Default: enabled (true).
  filmstripEnabled,

  /// Flag indicating if fullscreen (immersive) mode should be enabled.
  /// Default: enabled (true).
  fullscreenEnabled,

  /// Flag indicating if the Help button should be enabled.
  /// Default: enabled (true).
  helpButtonEnabled,

  /// Flag indicating if invite functionality should be enabled.
  /// Default: enabled (true).
  inviteEnabled,

  /// Flag indicating if recording should be enabled in iOS.
  /// Default: disabled (false).
  iosRecordingEnabled,

  /// Flag indicating if screen sharing should be enabled in iOS.
  /// Default: disabled (false).
  iosScreensharingEnabled,

  /// Flag indicating if the kick should be enabled.
  /// Default: disabled (true).
  kickOutEnabled,

  /// Flag indicating if live-streaming should be enabled.
  /// Default: auto-detected.
  liveStreamingEnabled,

  /// Flag indicating if lobby mode button should be enabled.
  /// Default: enabled.
  lobbyModeEnabled,

  /// Flag indicating if displaying the meeting name should be enabled.
  /// Default: enabled (true).
  meetingNameEnabled,

  /// Flag indicating if the meeting password button should be enabled. Note
  /// that this flag just decides on the buttton, if a meeting has a password
  /// set, the password ddialog will still show up.
  /// Default: enabled (true).
  meetingPasswordEnabled,

  /// Flag indicating if the notifications should be enabled.
  /// Default: enabled (true).
  notificationsEnabled,

  /// Flag indicating if the overflow menu should be enabled.
  /// Default: disabled (true).
  overflowMenuEnabled,

  /// Flag indicating if Picture-in-Picture should be enabled.
  /// Default: auto-detected.
  pipEnabled,

  /// Flag indicating if raise hand feature should be enabled.
  /// Default: enabled.
  raiseHandEnabled,

  /// Flag indicating if the reactions feature should be enabled.
  /// Default: enabled (true).
  reactionsEnabled,

  /// Flag indicating if recording should be enabled.
  /// Default: auto-detected.
  recordingEnabled,

  /// Flag indicating if the user should join the conference with the replaceParticipant functionality.
  /// Default: (false).
  replaceParticipant,

  /// Flag indicating the local and (maximum) remote video resolution. Overrides the server configuration.
  /// Default: (unset).
  resolution,

  /// Flag indicating if the security options button should be enabled.
  /// Default: enabled (true).
  securityOptionsEnabled,

  /// Flag indicating if server URL change is enabled.
  /// Default: enabled (true).
  serverUrlChangeEnabled,

  /// Flag indicating if speaker statistics should be enabled.
  /// Default: enabled (true).
  speakerstatsEnabled,

  /// Flag indicating if tile view feature should be enabled.
  /// Default: enabled.
  tileViewEnabled,

  /// Flag indicating if the toolbox should be always be visible
  /// Default: disabled (false).
  toolboxAlwaysVisible,

  /// Flag indicating if the toolbox should be enabled.
  /// Default: disabled (true).
  toolboxEnabled,

  /// Flag indicating if the video mute button should be displayed.
  /// Default: enabled (true).
  videoMuteButtonEnabled,

  /// Flag indicating if the video share button should be enabled.
  /// Default: enabled (true).
  videoShareButtonEnabled,

  /// Flag indicating if the welcome page should be enabled.
  /// Default: disabled (false).
  welcomePageEnabled,
}
