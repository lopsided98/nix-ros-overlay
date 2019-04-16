{ stdenv, python, cmake }:
{ nativeBuildInputs ? []
, propagatedNativeBuildInputs ? []
, passthru ? {}
, ...
}@args: stdenv.mkDerivation (args // {
  nativeBuildInputs = [ python.pkgs.wrapPython ] ++ nativeBuildInputs;
  propagatedNativeBuildInputs = [ cmake ] ++ propagatedNativeBuildInputs;

  passthru = passthru // {
    rosPackage = true;
  };
})
