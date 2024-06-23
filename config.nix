{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "bhops-tools";
      paths = [
        bash-completion
        neovim
        go
        ripgrep
        fzf
        fd
        lazygit
      ];
    };
  };
}
