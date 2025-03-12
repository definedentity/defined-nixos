{
  programs.firefox = {
    policies.ExtensionSettings = {
      # Dark Reader
      "addon@darkreader.org" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/addon@darkreader.org/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };

      # Clear URLs
      "{74145f27-f039-47ce-a470-a662b129930a}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/{74145f27-f039-47ce-a470-a662b129930a}/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };

      # Enhancer for YouTube™
      "enhancerforyoutube@maximerf.addons.mozilla.org" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/enhancerforyoutube@maximerf.addons.mozilla.org/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };

      # Proton Pass
      "78272b6fa58f4a1abaac99321d503a20@proton.me" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/78272b6fa58f4a1abaac99321d503a20@proton.me/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };

      # Return YouTube Dislike
      "{762f9885-5a13-4abd-9c77-433dcd38b8fd}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/{762f9885-5a13-4abd-9c77-433dcd38b8fd}/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };

      # To Google Translate
      "jid1-93WyvpgvxzGATw@jetpack" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-93WyvpgvxzGATw@jetpack/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };

      # WhatFont
      "{dcb8caa2-63fa-41aa-a508-a45c5990ebdd}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/{dcb8caa2-63fa-41aa-a508-a45c5990ebdd}/latest.xpi";
        installation_mode = "force_installed";
        private_browsing = true;
      };
    };
  };
}
