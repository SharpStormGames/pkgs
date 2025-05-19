{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "adguard-adblocker" = buildFirefoxXpiAddon {
      pname = "adguard-adblocker";
      version = "5.1.80";
      addonId = "adguardadblocker@adguard.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4481137/adguard_adblocker-5.1.80.xpi";
      sha256 = "5224d1b9ffadebdcce059526a52983133ffaab9672a01b8157b83ac8bdaba7ca";
      meta = with lib;
      {
        homepage = "https://adguard.com/";
        description = "Unmatched adblock extension against advertising and pop-ups. Blocks ads on Facebook, Youtube and all other websites.";
        license = licenses.lgpl3;
        mozPermissions = [
          "tabs"
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "storage"
          "contextMenus"
          "cookies"
          "privacy"
          "http://*/*"
          "https://*/*"
          "*://*.adguard.com/*/thankyou.html*"
          "*://*.adguard.info/*/thankyou.html*"
          "*://*.adguard.app/*/thankyou.html*"
        ];
        platforms = platforms.all;
      };
    };
    "better-canvas" = buildFirefoxXpiAddon {
      pname = "better-canvas";
      version = "5.12.0";
      addonId = "{8927f234-4dd9-48b1-bf76-44a9e153eee0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4373438/better_canvas-5.12.0.xpi";
      sha256 = "dcec560f4099b8982c064277cdd3f35070aa22851f6fdedeb975c21b1f611d23";
      meta = with lib;
      {
        description = "Best dark mode for Canvas, plus other features";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "https://*/*" ];
        platforms = platforms.all;
      };
    };
    "betterttv" = buildFirefoxXpiAddon {
      pname = "betterttv";
      version = "7.6.13";
      addonId = "firefox@betterttv.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4469511/betterttv-7.6.13.xpi";
      sha256 = "a18bc1e328eccc24ca034f3d2b9e717aaa7f25383d2e45484f8d54b0d368c99a";
      meta = with lib;
      {
        homepage = "https://betterttv.com";
        description = "Enhances Twitch and YouTube with new features, emotes, and more.";
        mozPermissions = [ "scripting" "activeTab" "*://*.twitch.tv/*" ];
        platforms = platforms.all;
      };
    };
    "darkreader" = buildFirefoxXpiAddon {
      pname = "darkreader";
      version = "4.9.106";
      addonId = "addon@darkreader.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4488139/darkreader-4.9.106.xpi";
      sha256 = "23c94085063aa6b57fae40ca9111ab049fffca5476c29e9990db3aa1a3fe1f10";
      meta = with lib;
      {
        homepage = "https://darkreader.org/";
        description = "Dark mode for every website. Take care of your eyes, use dark theme for night and daily browsing.";
        license = licenses.mit;
        mozPermissions = [
          "alarms"
          "contextMenus"
          "storage"
          "tabs"
          "theme"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "decentraleyes" = buildFirefoxXpiAddon {
      pname = "decentraleyes";
      version = "3.0.0";
      addonId = "jid1-BoFifL9Vbdl2zQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4392113/decentraleyes-3.0.0.xpi";
      sha256 = "6f2efed90696ac7f8ca7efb8ab308feb3bdf182350b3acfdf4050c09cc02f113";
      meta = with lib;
      {
        homepage = "https://decentraleyes.org";
        description = "Protects you against tracking through \"free\", centralized, content delivery. It prevents a lot of requests from reaching networks like Google Hosted Libraries, and serves local files to keep sites from breaking. Complements regular content blockers.";
        license = licenses.mpl20;
        mozPermissions = [
          "privacy"
          "webNavigation"
          "webRequestBlocking"
          "webRequest"
          "unlimitedStorage"
          "storage"
          "tabs"
        ];
        platforms = platforms.all;
      };
    };
    "gumbo-twitch-companion" = buildFirefoxXpiAddon {
      pname = "gumbo-twitch-companion";
      version = "1.19.1";
      addonId = "{59a39734-1e66-452e-a7b8-cc79f72062f0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4495121/gumbo_twitch_companion-1.19.1.xpi";
      sha256 = "7457467059a113cff731159d617c07af72a135ddc81dafcb7d7f8d3db957bc5a";
      meta = with lib;
      {
        homepage = "https://github.com/seldszar/gumbo";
        description = "Swollen companion keeping you updated on your Twitch experience";
        license = licenses.mit;
        mozPermissions = [ "alarms" "notifications" "storage" ];
        platforms = platforms.all;
      };
    };
    "hide-google-ai-overviews" = buildFirefoxXpiAddon {
      pname = "hide-google-ai-overviews";
      version = "1.3";
      addonId = "Google_AI_Overviews_Blocker@zachbarnes.dev";
      url = "https://addons.mozilla.org/firefox/downloads/file/4344840/hide_google_ai_overviews-1.3.xpi";
      sha256 = "400628036b571d16131b195b4928cbbdeaf2be4190e088898a63acae1b875f2c";
      meta = with lib;
      {
        homepage = "https://zachbarnes.dev";
        description = "Hide annoying Google AI Overviews.";
        license = licenses.mit;
        mozPermissions = [
          "scripting"
          "*://*.google.com/search*"
          "*://*.google.ad/search*"
          "*://*.google.ae/search*"
          "*://*.google.com.af/search*"
          "*://*.google.com.ag/search*"
          "*://*.google.al/search*"
          "*://*.google.am/search*"
          "*://*.google.co.ao/search*"
          "*://*.google.com.ar/search*"
          "*://*.google.as/search*"
          "*://*.google.at/search*"
          "*://*.google.com.au/search*"
          "*://*.google.az/search*"
          "*://*.google.ba/search*"
          "*://*.google.com.bd/search*"
          "*://*.google.be/search*"
          "*://*.google.bf/search*"
          "*://*.google.bg/search*"
          "*://*.google.com.bh/search*"
          "*://*.google.bi/search*"
          "*://*.google.bj/search*"
          "*://*.google.com.bn/search*"
          "*://*.google.com.bo/search*"
          "*://*.google.com.br/search*"
          "*://*.google.bs/search*"
          "*://*.google.bt/search*"
          "*://*.google.co.bw/search*"
          "*://*.google.by/search*"
          "*://*.google.com.bz/search*"
          "*://*.google.ca/search*"
          "*://*.google.cd/search*"
          "*://*.google.cf/search*"
          "*://*.google.cg/search*"
          "*://*.google.ch/search*"
          "*://*.google.ci/search*"
          "*://*.google.co.ck/search*"
          "*://*.google.cl/search*"
          "*://*.google.cm/search*"
          "*://*.google.cn/search*"
          "*://*.google.com.co/search*"
          "*://*.google.co.cr/search*"
          "*://*.google.com.cu/search*"
          "*://*.google.cv/search*"
          "*://*.google.com.cy/search*"
          "*://*.google.cz/search*"
          "*://*.google.de/search*"
          "*://*.google.dj/search*"
          "*://*.google.dk/search*"
          "*://*.google.dm/search*"
          "*://*.google.com.do/search*"
          "*://*.google.dz/search*"
          "*://*.google.com.ec/search*"
          "*://*.google.ee/search*"
          "*://*.google.com.eg/search*"
          "*://*.google.es/search*"
          "*://*.google.com.et/search*"
          "*://*.google.fi/search*"
          "*://*.google.com.fj/search*"
          "*://*.google.fm/search*"
          "*://*.google.fr/search*"
          "*://*.google.ga/search*"
          "*://*.google.ge/search*"
          "*://*.google.gg/search*"
          "*://*.google.com.gh/search*"
          "*://*.google.com.gi/search*"
          "*://*.google.gl/search*"
          "*://*.google.gm/search*"
          "*://*.google.gr/search*"
          "*://*.google.com.gt/search*"
          "*://*.google.gy/search*"
          "*://*.google.com.hk/search*"
          "*://*.google.hn/search*"
          "*://*.google.hr/search*"
          "*://*.google.ht/search*"
          "*://*.google.hu/search*"
          "*://*.google.co.id/search*"
          "*://*.google.ie/search*"
          "*://*.google.co.il/search*"
          "*://*.google.im/search*"
          "*://*.google.co.in/search*"
          "*://*.google.iq/search*"
          "*://*.google.is/search*"
          "*://*.google.it/search*"
          "*://*.google.je/search*"
          "*://*.google.com.jm/search*"
          "*://*.google.jo/search*"
          "*://*.google.co.jp/search*"
          "*://*.google.co.ke/search*"
          "*://*.google.com.kh/search*"
          "*://*.google.ki/search*"
          "*://*.google.kg/search*"
          "*://*.google.co.kr/search*"
          "*://*.google.com.kw/search*"
          "*://*.google.kz/search*"
          "*://*.google.la/search*"
          "*://*.google.com.lb/search*"
          "*://*.google.li/search*"
          "*://*.google.lk/search*"
          "*://*.google.co.ls/search*"
          "*://*.google.lt/search*"
          "*://*.google.lu/search*"
          "*://*.google.lv/search*"
          "*://*.google.com.ly/search*"
          "*://*.google.co.ma/search*"
          "*://*.google.md/search*"
          "*://*.google.me/search*"
          "*://*.google.mg/search*"
          "*://*.google.mk/search*"
          "*://*.google.ml/search*"
          "*://*.google.com.mm/search*"
          "*://*.google.mn/search*"
          "*://*.google.com.mt/search*"
          "*://*.google.mu/search*"
          "*://*.google.mv/search*"
          "*://*.google.mw/search*"
          "*://*.google.com.mx/search*"
          "*://*.google.com.my/search*"
          "*://*.google.co.mz/search*"
          "*://*.google.com.na/search*"
          "*://*.google.com.ng/search*"
          "*://*.google.com.ni/search*"
          "*://*.google.ne/search*"
          "*://*.google.nl/search*"
          "*://*.google.no/search*"
          "*://*.google.com.np/search*"
          "*://*.google.nr/search*"
          "*://*.google.nu/search*"
          "*://*.google.co.nz/search*"
          "*://*.google.com.om/search*"
          "*://*.google.com.pa/search*"
          "*://*.google.com.pe/search*"
          "*://*.google.com.pg/search*"
          "*://*.google.com.ph/search*"
          "*://*.google.com.pk/search*"
          "*://*.google.pl/search*"
          "*://*.google.pn/search*"
          "*://*.google.com.pr/search*"
          "*://*.google.ps/search*"
          "*://*.google.pt/search*"
          "*://*.google.com.py/search*"
          "*://*.google.com.qa/search*"
          "*://*.google.ro/search*"
          "*://*.google.ru/search*"
          "*://*.google.rw/search*"
          "*://*.google.com.sa/search*"
          "*://*.google.com.sb/search*"
          "*://*.google.sc/search*"
          "*://*.google.se/search*"
          "*://*.google.com.sg/search*"
          "*://*.google.sh/search*"
          "*://*.google.si/search*"
          "*://*.google.sk/search*"
          "*://*.google.com.sl/search*"
          "*://*.google.sn/search*"
          "*://*.google.so/search*"
          "*://*.google.sm/search*"
          "*://*.google.sr/search*"
          "*://*.google.st/search*"
          "*://*.google.com.sv/search*"
          "*://*.google.td/search*"
          "*://*.google.tg/search*"
          "*://*.google.co.th/search*"
          "*://*.google.com.tj/search*"
          "*://*.google.tl/search*"
          "*://*.google.tm/search*"
          "*://*.google.tn/search*"
          "*://*.google.to/search*"
          "*://*.google.com.tr/search*"
          "*://*.google.tt/search*"
          "*://*.google.com.tw/search*"
          "*://*.google.co.tz/search*"
          "*://*.google.com.ua/search*"
          "*://*.google.co.ug/search*"
          "*://*.google.co.uk/search*"
          "*://*.google.com.uy/search*"
          "*://*.google.co.uz/search*"
          "*://*.google.com.vc/search*"
          "*://*.google.co.ve/search*"
          "*://*.google.co.vi/search*"
          "*://*.google.com.vn/search*"
          "*://*.google.vu/search*"
          "*://*.google.ws/search*"
          "*://*.google.rs/search*"
          "*://*.google.co.za/search*"
          "*://*.google.co.zm/search*"
          "*://*.google.co.zw/search*"
          "*://*.google.cat/search*"
        ];
        platforms = platforms.all;
      };
    };
    "nighttab" = buildFirefoxXpiAddon {
      pname = "nighttab";
      version = "7.3.0";
      addonId = "{47bf427e-c83d-457d-9b3d-3db4118574bd}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3848032/nighttab-7.3.0.xpi";
      sha256 = "ef53db7d9276a9f21533f8b21bc67114965c959802c0d2a92b8fce6cebed800d";
      meta = with lib;
      {
        homepage = "https://github.com/zombieFox/nightTab";
        description = "A neutral new tab page accented with a chosen colour. Customise the layout, style, background and bookmarks in nightTab.";
        license = licenses.gpl3;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "privacy-badger17" = buildFirefoxXpiAddon {
      pname = "privacy-badger17";
      version = "2025.3.27";
      addonId = "jid1-MnnxcxisBPnSXQ@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4463652/privacy_badger17-2025.3.27.xpi";
      sha256 = "45976baab7476792dcad07f4386be618fd49b27eeb000c5e6b4b6f3611bf865e";
      meta = with lib;
      {
        homepage = "https://privacybadger.org/";
        description = "Automatically learns to block invisible trackers.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "alarms"
          "privacy"
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "https://*.facebook.com/*"
          "http://*.facebook.com/*"
          "https://*.messenger.com/*"
          "http://*.messenger.com/*"
          "*://*.facebookcorewwwi.onion/*"
          "https://docs.google.com/*"
          "http://docs.google.com/*"
          "https://mail.google.com/*"
          "http://mail.google.com/*"
          "https://www.google.com/*"
          "http://www.google.com/*"
          "https://www.google.ad/*"
          "http://www.google.ad/*"
          "https://www.google.ae/*"
          "http://www.google.ae/*"
          "https://www.google.com.af/*"
          "http://www.google.com.af/*"
          "https://www.google.com.ag/*"
          "http://www.google.com.ag/*"
          "https://www.google.com.ai/*"
          "http://www.google.com.ai/*"
          "https://www.google.al/*"
          "http://www.google.al/*"
          "https://www.google.am/*"
          "http://www.google.am/*"
          "https://www.google.co.ao/*"
          "http://www.google.co.ao/*"
          "https://www.google.com.ar/*"
          "http://www.google.com.ar/*"
          "https://www.google.as/*"
          "http://www.google.as/*"
          "https://www.google.at/*"
          "http://www.google.at/*"
          "https://www.google.com.au/*"
          "http://www.google.com.au/*"
          "https://www.google.az/*"
          "http://www.google.az/*"
          "https://www.google.ba/*"
          "http://www.google.ba/*"
          "https://www.google.com.bd/*"
          "http://www.google.com.bd/*"
          "https://www.google.be/*"
          "http://www.google.be/*"
          "https://www.google.bf/*"
          "http://www.google.bf/*"
          "https://www.google.bg/*"
          "http://www.google.bg/*"
          "https://www.google.com.bh/*"
          "http://www.google.com.bh/*"
          "https://www.google.bi/*"
          "http://www.google.bi/*"
          "https://www.google.bj/*"
          "http://www.google.bj/*"
          "https://www.google.com.bn/*"
          "http://www.google.com.bn/*"
          "https://www.google.com.bo/*"
          "http://www.google.com.bo/*"
          "https://www.google.com.br/*"
          "http://www.google.com.br/*"
          "https://www.google.bs/*"
          "http://www.google.bs/*"
          "https://www.google.bt/*"
          "http://www.google.bt/*"
          "https://www.google.co.bw/*"
          "http://www.google.co.bw/*"
          "https://www.google.by/*"
          "http://www.google.by/*"
          "https://www.google.com.bz/*"
          "http://www.google.com.bz/*"
          "https://www.google.ca/*"
          "http://www.google.ca/*"
          "https://www.google.cd/*"
          "http://www.google.cd/*"
          "https://www.google.cf/*"
          "http://www.google.cf/*"
          "https://www.google.cg/*"
          "http://www.google.cg/*"
          "https://www.google.ch/*"
          "http://www.google.ch/*"
          "https://www.google.ci/*"
          "http://www.google.ci/*"
          "https://www.google.co.ck/*"
          "http://www.google.co.ck/*"
          "https://www.google.cl/*"
          "http://www.google.cl/*"
          "https://www.google.cm/*"
          "http://www.google.cm/*"
          "https://www.google.cn/*"
          "http://www.google.cn/*"
          "https://www.google.com.co/*"
          "http://www.google.com.co/*"
          "https://www.google.co.cr/*"
          "http://www.google.co.cr/*"
          "https://www.google.com.cu/*"
          "http://www.google.com.cu/*"
          "https://www.google.cv/*"
          "http://www.google.cv/*"
          "https://www.google.com.cy/*"
          "http://www.google.com.cy/*"
          "https://www.google.cz/*"
          "http://www.google.cz/*"
          "https://www.google.de/*"
          "http://www.google.de/*"
          "https://www.google.dj/*"
          "http://www.google.dj/*"
          "https://www.google.dk/*"
          "http://www.google.dk/*"
          "https://www.google.dm/*"
          "http://www.google.dm/*"
          "https://www.google.com.do/*"
          "http://www.google.com.do/*"
          "https://www.google.dz/*"
          "http://www.google.dz/*"
          "https://www.google.com.ec/*"
          "http://www.google.com.ec/*"
          "https://www.google.ee/*"
          "http://www.google.ee/*"
          "https://www.google.com.eg/*"
          "http://www.google.com.eg/*"
          "https://www.google.es/*"
          "http://www.google.es/*"
          "https://www.google.com.et/*"
          "http://www.google.com.et/*"
          "https://www.google.fi/*"
          "http://www.google.fi/*"
          "https://www.google.com.fj/*"
          "http://www.google.com.fj/*"
          "https://www.google.fm/*"
          "http://www.google.fm/*"
          "https://www.google.fr/*"
          "http://www.google.fr/*"
          "https://www.google.ga/*"
          "http://www.google.ga/*"
          "https://www.google.ge/*"
          "http://www.google.ge/*"
          "https://www.google.gg/*"
          "http://www.google.gg/*"
          "https://www.google.com.gh/*"
          "http://www.google.com.gh/*"
          "https://www.google.com.gi/*"
          "http://www.google.com.gi/*"
          "https://www.google.gl/*"
          "http://www.google.gl/*"
          "https://www.google.gm/*"
          "http://www.google.gm/*"
          "https://www.google.gr/*"
          "http://www.google.gr/*"
          "https://www.google.com.gt/*"
          "http://www.google.com.gt/*"
          "https://www.google.gy/*"
          "http://www.google.gy/*"
          "https://www.google.com.hk/*"
          "http://www.google.com.hk/*"
          "https://www.google.hn/*"
          "http://www.google.hn/*"
          "https://www.google.hr/*"
          "http://www.google.hr/*"
          "https://www.google.ht/*"
          "http://www.google.ht/*"
          "https://www.google.hu/*"
          "http://www.google.hu/*"
          "https://www.google.co.id/*"
          "http://www.google.co.id/*"
          "https://www.google.ie/*"
          "http://www.google.ie/*"
          "https://www.google.co.il/*"
          "http://www.google.co.il/*"
          "https://www.google.im/*"
          "http://www.google.im/*"
          "https://www.google.co.in/*"
          "http://www.google.co.in/*"
          "https://www.google.iq/*"
          "http://www.google.iq/*"
          "https://www.google.is/*"
          "http://www.google.is/*"
          "https://www.google.it/*"
          "http://www.google.it/*"
          "https://www.google.je/*"
          "http://www.google.je/*"
          "https://www.google.com.jm/*"
          "http://www.google.com.jm/*"
          "https://www.google.jo/*"
          "http://www.google.jo/*"
          "https://www.google.co.jp/*"
          "http://www.google.co.jp/*"
          "https://www.google.co.ke/*"
          "http://www.google.co.ke/*"
          "https://www.google.com.kh/*"
          "http://www.google.com.kh/*"
          "https://www.google.ki/*"
          "http://www.google.ki/*"
          "https://www.google.kg/*"
          "http://www.google.kg/*"
          "https://www.google.co.kr/*"
          "http://www.google.co.kr/*"
          "https://www.google.com.kw/*"
          "http://www.google.com.kw/*"
          "https://www.google.kz/*"
          "http://www.google.kz/*"
          "https://www.google.la/*"
          "http://www.google.la/*"
          "https://www.google.com.lb/*"
          "http://www.google.com.lb/*"
          "https://www.google.li/*"
          "http://www.google.li/*"
          "https://www.google.lk/*"
          "http://www.google.lk/*"
          "https://www.google.co.ls/*"
          "http://www.google.co.ls/*"
          "https://www.google.lt/*"
          "http://www.google.lt/*"
          "https://www.google.lu/*"
          "http://www.google.lu/*"
          "https://www.google.lv/*"
          "http://www.google.lv/*"
          "https://www.google.com.ly/*"
          "http://www.google.com.ly/*"
          "https://www.google.co.ma/*"
          "http://www.google.co.ma/*"
          "https://www.google.md/*"
          "http://www.google.md/*"
          "https://www.google.me/*"
          "http://www.google.me/*"
          "https://www.google.mg/*"
          "http://www.google.mg/*"
          "https://www.google.mk/*"
          "http://www.google.mk/*"
          "https://www.google.ml/*"
          "http://www.google.ml/*"
          "https://www.google.com.mm/*"
          "http://www.google.com.mm/*"
          "https://www.google.mn/*"
          "http://www.google.mn/*"
          "https://www.google.ms/*"
          "http://www.google.ms/*"
          "https://www.google.com.mt/*"
          "http://www.google.com.mt/*"
          "https://www.google.mu/*"
          "http://www.google.mu/*"
          "https://www.google.mv/*"
          "http://www.google.mv/*"
          "https://www.google.mw/*"
          "http://www.google.mw/*"
          "https://www.google.com.mx/*"
          "http://www.google.com.mx/*"
          "https://www.google.com.my/*"
          "http://www.google.com.my/*"
          "https://www.google.co.mz/*"
          "http://www.google.co.mz/*"
          "https://www.google.com.na/*"
          "http://www.google.com.na/*"
          "https://www.google.com.ng/*"
          "http://www.google.com.ng/*"
          "https://www.google.com.ni/*"
          "http://www.google.com.ni/*"
          "https://www.google.ne/*"
          "http://www.google.ne/*"
          "https://www.google.nl/*"
          "http://www.google.nl/*"
          "https://www.google.no/*"
          "http://www.google.no/*"
          "https://www.google.com.np/*"
          "http://www.google.com.np/*"
          "https://www.google.nr/*"
          "http://www.google.nr/*"
          "https://www.google.nu/*"
          "http://www.google.nu/*"
          "https://www.google.co.nz/*"
          "http://www.google.co.nz/*"
          "https://www.google.com.om/*"
          "http://www.google.com.om/*"
          "https://www.google.com.pa/*"
          "http://www.google.com.pa/*"
          "https://www.google.com.pe/*"
          "http://www.google.com.pe/*"
          "https://www.google.com.pg/*"
          "http://www.google.com.pg/*"
          "https://www.google.com.ph/*"
          "http://www.google.com.ph/*"
          "https://www.google.com.pk/*"
          "http://www.google.com.pk/*"
          "https://www.google.pl/*"
          "http://www.google.pl/*"
          "https://www.google.pn/*"
          "http://www.google.pn/*"
          "https://www.google.com.pr/*"
          "http://www.google.com.pr/*"
          "https://www.google.ps/*"
          "http://www.google.ps/*"
          "https://www.google.pt/*"
          "http://www.google.pt/*"
          "https://www.google.com.py/*"
          "http://www.google.com.py/*"
          "https://www.google.com.qa/*"
          "http://www.google.com.qa/*"
          "https://www.google.ro/*"
          "http://www.google.ro/*"
          "https://www.google.ru/*"
          "http://www.google.ru/*"
          "https://www.google.rw/*"
          "http://www.google.rw/*"
          "https://www.google.com.sa/*"
          "http://www.google.com.sa/*"
          "https://www.google.com.sb/*"
          "http://www.google.com.sb/*"
          "https://www.google.sc/*"
          "http://www.google.sc/*"
          "https://www.google.se/*"
          "http://www.google.se/*"
          "https://www.google.com.sg/*"
          "http://www.google.com.sg/*"
          "https://www.google.sh/*"
          "http://www.google.sh/*"
          "https://www.google.si/*"
          "http://www.google.si/*"
          "https://www.google.sk/*"
          "http://www.google.sk/*"
          "https://www.google.com.sl/*"
          "http://www.google.com.sl/*"
          "https://www.google.sn/*"
          "http://www.google.sn/*"
          "https://www.google.so/*"
          "http://www.google.so/*"
          "https://www.google.sm/*"
          "http://www.google.sm/*"
          "https://www.google.sr/*"
          "http://www.google.sr/*"
          "https://www.google.st/*"
          "http://www.google.st/*"
          "https://www.google.com.sv/*"
          "http://www.google.com.sv/*"
          "https://www.google.td/*"
          "http://www.google.td/*"
          "https://www.google.tg/*"
          "http://www.google.tg/*"
          "https://www.google.co.th/*"
          "http://www.google.co.th/*"
          "https://www.google.com.tj/*"
          "http://www.google.com.tj/*"
          "https://www.google.tl/*"
          "http://www.google.tl/*"
          "https://www.google.tm/*"
          "http://www.google.tm/*"
          "https://www.google.tn/*"
          "http://www.google.tn/*"
          "https://www.google.to/*"
          "http://www.google.to/*"
          "https://www.google.com.tr/*"
          "http://www.google.com.tr/*"
          "https://www.google.tt/*"
          "http://www.google.tt/*"
          "https://www.google.com.tw/*"
          "http://www.google.com.tw/*"
          "https://www.google.co.tz/*"
          "http://www.google.co.tz/*"
          "https://www.google.com.ua/*"
          "http://www.google.com.ua/*"
          "https://www.google.co.ug/*"
          "http://www.google.co.ug/*"
          "https://www.google.co.uk/*"
          "http://www.google.co.uk/*"
          "https://www.google.com.uy/*"
          "http://www.google.com.uy/*"
          "https://www.google.co.uz/*"
          "http://www.google.co.uz/*"
          "https://www.google.com.vc/*"
          "http://www.google.com.vc/*"
          "https://www.google.co.ve/*"
          "http://www.google.co.ve/*"
          "https://www.google.vg/*"
          "http://www.google.vg/*"
          "https://www.google.co.vi/*"
          "http://www.google.co.vi/*"
          "https://www.google.com.vn/*"
          "http://www.google.com.vn/*"
          "https://www.google.vu/*"
          "http://www.google.vu/*"
          "https://www.google.ws/*"
          "http://www.google.ws/*"
          "https://www.google.rs/*"
          "http://www.google.rs/*"
          "https://www.google.co.za/*"
          "http://www.google.co.za/*"
          "https://www.google.co.zm/*"
          "http://www.google.co.zm/*"
          "https://www.google.co.zw/*"
          "http://www.google.co.zw/*"
          "https://www.google.cat/*"
          "http://www.google.cat/*"
        ];
        platforms = platforms.all;
      };
    };
    "profile-switcher" = buildFirefoxXpiAddon {
      pname = "profile-switcher";
      version = "1.3.1";
      addonId = "profile-switcher-ff@nd.ax";
      url = "https://addons.mozilla.org/firefox/downloads/file/3945999/profile_switcher-1.3.1.xpi";
      sha256 = "80ca410ad883a0a2a2dc50cb1f74474dd829223ce106a5911120461c30e4e64f";
      meta = with lib;
      {
        homepage = "https://github.com/null-dev/firefox-profile-switcher";
        description = "Create, manage and switch between browser profiles seamlessly.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" "nativeMessaging" "tabs" ];
        platforms = platforms.all;
      };
    };
    "proton-pass" = buildFirefoxXpiAddon {
      pname = "proton-pass";
      version = "1.31.2";
      addonId = "78272b6fa58f4a1abaac99321d503a20@proton.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4491195/proton_pass-1.31.2.xpi";
      sha256 = "1be8b5bdc3ad9d5b54b67c88e46d2e3437d913977a8e0100c10d695ac600bb93";
      meta = with lib;
      {
        homepage = "https://proton.me";
        description = "Free and unlimited password manager to keep your login credentials safe and manage them directly in your browser.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "alarms"
          "scripting"
          "storage"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
          "https://*/*"
          "http://*/*"
          "https://account.proton.me/*"
          "https://pass.proton.me/*"
        ];
        platforms = platforms.all;
      };
    };
    "tabliss" = buildFirefoxXpiAddon {
      pname = "tabliss";
      version = "2.6.0";
      addonId = "extension@tabliss.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3940751/tabliss-2.6.0.xpi";
      sha256 = "de766810f234b1c13ffdb7047ae6cbf06ed79c3d08b51a07e4766fadff089c0f";
      meta = with lib;
      {
        homepage = "https://tabliss.io";
        description = "A beautiful New Tab page with many customisable backgrounds and widgets that does not require any permissions.";
        license = licenses.gpl3;
        mozPermissions = [ "storage" ];
        platforms = platforms.all;
      };
    };
    "untrap-for-youtube" = buildFirefoxXpiAddon {
      pname = "untrap-for-youtube";
      version = "8.3.1";
      addonId = "{2662ff67-b302-4363-95f3-b050218bd72c}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4403100/untrap_for_youtube-8.3.1.xpi";
      sha256 = "9dab0042653747fb81cecf23c20e8b6f42d4d11a98181ac9c316e76e80c65575";
      meta = with lib;
      {
        homepage = "http://untrap.app";
        description = "Hide YouTube recommendations, shorts, comments, suggestions, related videos, trending and other distractions.";
        mozPermissions = [
          "storage"
          "activeTab"
          "*://*.youtube.com/*"
          "*://www.youtube.com/*"
          "*://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "youtube-addon" = buildFirefoxXpiAddon {
      pname = "youtube-addon";
      version = "4.1188";
      addonId = "{3c6bf0cc-3ae2-42fb-9993-0d33104fdcaf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4411470/youtube_addon-4.1188.xpi";
      sha256 = "51ba97226fce20508231b269b79e18bc2a90db73b2563f9f6434a64a7766f79b";
      meta = with lib;
      {
        homepage = "https://github.com/code4charity/YouTube-Extension/";
        description = "Youtube Extension. Powerful but lightweight. Enrich your Youtube and content selection. Make YouTube tidy and smart! (Layout, Filters, Shortcuts, Playlist)";
        mozPermissions = [
          "contextMenus"
          "storage"
          "https://www.youtube.com/*"
          "https://m.youtube.com/*"
        ];
        platforms = platforms.all;
      };
    };
  }