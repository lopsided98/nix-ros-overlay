{ stdenv, python, cmake }:
{ postInstall ? ""
, postFixup ? ""
, buildInputs ? []
, nativeBuildInputs ? []
, propagatedNativeBuildInputs ? []
, ...
}@args: stdenv.mkDerivation (args // {

  nativeBuildInputs = [ python.pkgs.wrapPython ] ++ nativeBuildInputs;
  propagatedNativeBuildInputs = [ cmake ] ++ propagatedNativeBuildInputs;

  postInstall = ''
    pushd $out
    rm -f *setup.*sh
    rm -f _setup_util.py
    rm -f env.sh
    popd
  '' + postInstall;
})
