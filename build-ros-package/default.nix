{ stdenv, python, cmake }:
{ nativeBuildInputs ? []
, passthru ? {}
, ...
}@args: stdenv.mkDerivation (args // {
  nativeBuildInputs = [ python.pkgs.wrapPython ] ++ nativeBuildInputs;

  passthru = passthru // {
    rosPackage = true;
  };
})
