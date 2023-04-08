{ lib, stdenv, fetchurl, fetchpatch, cmake, gz-cmake, ruby, boost
, gz-math, gz-utils, tinyxml-2, tinyxml, urdfdom
, version, srcHash
, ... }:

stdenv.mkDerivation rec {
  pname = "sdformat";
  inherit version;

  src = fetchurl { 
    url = "https://osrf-distributions.s3.amazonaws.com/${pname}/releases/${pname}-${version}.tar.bz2";
    hash = srcHash;
  };

  patches =
    # Fix asssumptions that CMAKE_INSTALL_*DIR variables are relative
    # https://github.com/gazebosim/sdformat/pull/1190
    lib.optional (lib.versionOlder version "9") (fetchpatch {
      url = "https://github.com/gazebosim/sdformat/commit/b37a28eefb4c06e1add5fa53d7a08cd5d2402f9b.patch";
      hash = "sha256-IZ5RIl3GlAY4LzcmOOpiWZkyjVnsislo5brwu+t5pZo=";
    }) ++
    # Fix finding urdfdom headers
    # Backport of: https://github.com/gazebosim/sdformat/commit/eddf3ef00f07549e7270f619de1ae2849d49daaa
    lib.optional (lib.versionOlder version "8.9.0") (fetchpatch {
      url = "https://github.com/gazebosim/sdformat/commit/6745b2e9a2c7b90ef07232292e3679b79190b1d7.patch";
      hash = "sha256-ntsmfQkNdhGlKMifoG0khKuGmL4tmd/UF75Pp3d0yE4=";
    });

  enableParallelBuilding = true;

  nativeBuildInputs = [ cmake gz-cmake ruby ];
  buildInputs = [ gz-math gz-utils urdfdom ];
  propagatedBuildInputs = [ gz-math ]
    ++ lib.singleton (if lib.versionAtLeast version "10.0.0" then tinyxml-2 else tinyxml)
    ++ lib.optional (lib.versionOlder version "8.0.0") boost;

  meta = with lib; {
    homepage = "http://sdformat.org/";
    description = "Simulation Description Format (SDF) parser and description files";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.unix;
  };
}
