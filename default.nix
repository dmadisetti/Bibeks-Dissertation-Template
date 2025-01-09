{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "jhu-dissertation";
  src = ./.;

  buildInputs = [
    pkgs.texlive.combined.scheme-full
    pkgs.perl
    pkgs.texlab
  ];

  installPhase = ''
    mkdir -p .tmp/artifacts
    mkdir -p .tmp/bin

    latexmk -pdf main.tex
    mv main.pdf .tmp/template.pdf
    mv * .tmp/artifacts
    mv .tmp $out

    cat <<EOF > $out/bin/jhu-dissertation
    #!/bin/sh
    cp $out/template.pdf .
    chmod +w template.pdf
    echo "Build sucessfully 🎉"
    EOF
    chmod +x $out/bin/jhu-dissertation
  '';

  checkPhase = ''
    text-fmt
  '';


  meta = with pkgs.lib; {
    description = "A derivation to compile and format the LaTeX template for the JHU Dissertation.";
    license = licenses.mit;
    maintainers = with maintainers; [ dmadisetti ];
  };
}
