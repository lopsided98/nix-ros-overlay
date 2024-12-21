{
  lib,
  stdenv,
  fetchurl,
  fetchpatch,
  cmake,
  gz-cmake,
  ruby,
  gz-math,
  gz-utils,
  tinyxml-2,
  tinyxml,
  urdfdom,
  version,
  srcHash,
  ...
}:

stdenv.mkDerivation rec {
  pname = "sdformat";
  inherit version;

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/${pname}/releases/${pname}-${version}.tar.bz2";
    hash = srcHash;
  };

  enableParallelBuilding = true;

  nativeBuildInputs = [
    cmake
    gz-cmake
    ruby
  ];
  buildInputs = [
    gz-math
    gz-utils
    urdfdom
  ];
  propagatedBuildInputs = [
    gz-math
  ] ++ lib.singleton (if lib.versionAtLeast version "10.0.0" then tinyxml-2 else tinyxml);

  meta = with lib; {
    homepage = "http://sdformat.org/";
    description = "Simulation Description Format (SDF) parser and description files";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.unix;
  };
}
