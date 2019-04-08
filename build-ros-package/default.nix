{ stdenv, python, cmake }:
{ nativeBuildInputs ? []
, propagatedNativeBuildInputs ? []
, ...
}@args: stdenv.mkDerivation (args // {
  nativeBuildInputs = [ python.pkgs.wrapPython ] ++ nativeBuildInputs;
  propagatedNativeBuildInputs = [ cmake ] ++ propagatedNativeBuildInputs;
})
