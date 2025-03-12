{
  programs.firefox.policies = {
    # Update
    AppAutoUpdate = false;
    DisableAppUpdate = true;

    # Common
    DontCheckDefaultBrowser = true;
    DisableFirefoxScreenshots = true;
    DisableProfileImport = true;
    DisableSetDesktopBackground = true;
    HardwareAcceleration = true;
    TranslateEnabled = false;

    # Privacy
    EnableTrackingProtection = {
      Value = true;
      Locked = true;

      Cryptomining = true;
      Fingerprinting = true;
      EmailTracking = true;
    };
    HttpsOnlyMode = true;

    # Cookies
    Cookies = {
      Behavior = "reject-tracker";
      BehaviorPrivateBrowsing = "reject";
    };

    # DNS
    DNSOverHTTPS = {
      Enabled = true;
      ProviderURL = "https://dns.nextdns.io/27dba1/Firefox";
      Locked = true;
      Fallback = false;
    };

    # Mozilla Services
    DisableFirefoxAccounts = true;
    DisableFirefoxStudies = true;
    DisableTelemetry = true;

    # I hate autofill
    AutofillAddressEnabled = false;
    AutofillCreditCardEnabled = false;
    PasswordManagerEnabled = false;

    # Config in Nix
    BlockAboutAddons = false;
    BlockAboutConfig = true;
    BlockAboutProfiles = true;
    BlockAboutSupport = true;

    # Downloads
    DefaultDownloadDirectory = "\${home}/Downloads";

    Preferences = {
      "cookiebanners.service.mode.privateBrowsing" = 2; # Block cookie banners in private browsing
      "cookiebanners.service.mode" = 2; # Block cookie banners
      "privacy.donottrackheader.enabled" = true;
      "privacy.fingerprintingProtection" = true;
      "privacy.resistFingerprinting" = true;
      "privacy.trackingprotection.emailtracking.enabled" = true;
      "privacy.trackingprotection.enabled" = true;
      "privacy.trackingprotection.fingerprinting.enabled" = true;
      "privacy.trackingprotection.socialtracking.enabled" = true;
    };
  };
}
