pkgs : {
  allowUnfree = true;
  allowBroken = true;
   packageOverrides = self : rec {
      vimEnv = self.buildEnv
      { 
        name = "vim-env";
        paths = with self.vimPlugins;
          [ youcompleteme taglist tagbar vundle fugitive nerdtree airline ghcmod-vim neco-ghc a nerdcommenter undotree easymotion colors-solarized table-mode vimproc tagbar haskellconceal hoogle gist-vim webapi-vim lushtags calendar thumbnail latex-live-preview latex-box easy-align gitgutter hardtime tabmerge rainbow_parentheses rust idris-vim quickfixstatus  hier shabadou quickrun watchdogs signature ];
      };

      hsEnv = self.haskellPackages.ghcWithPackagesOld (self : with self; [ cabalInstall cabal2nix xmonad xmobar xmonadContrib Agda lushtags haddock stylishHaskell ghcMod hlint hoogle hoogleLocal ]);

      developmentEnv = self.buildEnv
      {
        name = "development-env";
        paths = with self;
        [ zlib freeglut bzip2 xlibs.libX11 mesa pciutils astyle manpages ctags ];
      };

      hugeEnv = self.buildEnv
      {
        name = "huge-env";
        paths = with self;
        [ gimp libreoffice chromiumDev inkscape ];
      };

      emacsEnv = self.buildEnv
      {
        name = "emacs-env";
        paths = with self;
        [ emacs emacs24Packages.haskellMode emacs24Packages.colorThemeSolarized emacs24Packages.structuredHaskellMode ];
      };

      deEnv = self.buildEnv
      {
        name = "de-env";
        paths = with self;
        [ trayer moc transmission_gtk transmission_remote_gtk tor p7zip unrar mc vlc imagemagick bc darcs djview4 evince xfe steam steamChrootEnv file flac freetype gtkvnc hdparm iftop lastfmsubmitd mirage  unetbootin lm_sensors mutt python33Packages.glances tightvnc xclip youtubeDL python27Packages.turses gnome.zenity xfce.xfce4notifyd xfce.xfce4terminal libnotify weechat aspell aspellDicts.ru aspellDicts.en dwb ];
      };
      /*dropbox-cli */
  };
}
