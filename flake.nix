{
  description = "A flake to compile and format the LaTeX template for the JHU Dissertation.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = [
          pkgs.texlive.combined.scheme-full
          pkgs.perl
          pkgs.tex-fmt # tex-fmt tool
        ];
      };

      defaultPackage = pkgs.callPackage ./default.nix {};
    });
}
