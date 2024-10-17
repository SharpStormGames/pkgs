#!/usr/bin/env nu

let pkgdate = ((date now | date to-timezone "Australia/Sydney") - 1day | format date "%Y%m%d01")
let pkgurl = $"https://packages.element.io/debian/pool/main/e/element-nightly/element-nightly_($pkgdate)_amd64.deb"

if (try {http head $pkgurl} catch { "no" }) == "no" {
    print "No Element Nightly release found."
    return
} else {
    echo $pkgdate | save ./element-nightly/date -f
    print $"Date Written: (cat ./element-nightly/date)"
    echo (nix-prefetch-url $pkgurl) | save ./element-nightly/sha256 -f
    print $"SHA256 written: (cat ./element-nightly/sha256)"
}
