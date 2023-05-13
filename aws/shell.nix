with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "node";
  buildInputs = [
    awscli2
    awsrm
    awsls
    awstats
    awsweeper
  ];
}