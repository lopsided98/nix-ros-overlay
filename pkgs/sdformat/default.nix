{ lib, stdenv, fetchurl, fetchpatch, cmake, pkg-config, ruby, boost, ignition
, ignition-math ? ignition.math, tinyxml, urdfdom, urdfdom-headers
, console-bridge
, version ? "9.9.0"
, srcHash ? "sha256-/Vf7xkWfehJzLcAS6JDTk5HuC4tL0p3ImGfq7/OutZw="
, ...
  }:

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
    lib.singleton (if (lib.versionAtLeast version "9") then {
      url = "https://github.com/gazebosim/sdformat/commit/e8286cd012623173f40536c7fbea780bb65e7f0b.patch";
      hash = "sha256-WHpbN2n3JDV98SzWpPRtFE4xRB/jdlwMZagTsIZ1ixk=";
    } else fetchpatch {
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

  nativeBuildInputs = [ cmake pkg-config ruby ];
  buildInputs = [ urdfdom ];
  propagatedBuildInputs = [ ignition-math tinyxml ]
    ++ lib.optional (lib.versionOlder version "9") boost;

  meta = with lib; {
    homepage = "http://sdformat.org/";
    description = "Simulation Description Format (SDF) parser and description files";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.unix;
  };
}
