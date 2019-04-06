{ stdenv, python, cmake }:
{ postInstall ? ""
, postFixup ? ""
, buildInputs ? []
, nativeBuildInputs ? []
, propagatedNativeBuildInputs ? []
, passthru ? {}
, ...
}@args: stdenv.mkDerivation (args // {

  nativeBuildInputs = [ python.pkgs.wrapPython ] ++ nativeBuildInputs;
  propagatedNativeBuildInputs = [ cmake ] ++ propagatedNativeBuildInputs;
})
