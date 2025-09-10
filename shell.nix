{ pkgs ? import <nixpkgs> { }, }:
pkgs.mkShell {
  packages = with pkgs; [
    (python3.buildEnv.override {
      extraLibs = with python3.pkgs; [
        pyyaml
        stackprinter
        loguru

        selenium
        webdriver-manager

        ruff

        pyvirtualdisplay
      ];
    })
    chromedriver
    chromium

    xorg.xvfb
    ffmpeg-full
  ];
}
