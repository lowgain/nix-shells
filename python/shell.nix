with import <nixpkgs> {};
with pkgs.python310Packages;

stdenv.mkDerivation {
  name = "python";

  buildInputs = [
    pip
    python3Full
    virtualenv
  ];

  shellHook = ''
    SOURCE_DATE_EPOCH=$(date +%s)

    echo -e "=========Creating python environment========="
    virtualenv --no-setuptools venv > /dev/null
    export PATH=$PWD/venv/bin:$PATH > /dev/null
    pip install -r requirements.txt > /dev/null
  '';
}