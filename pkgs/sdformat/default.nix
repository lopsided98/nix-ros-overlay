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

  # Fix asssumptions that CMAKE_INSTALL_*DIR variables are relative
  # https://github.com/gazebosim/sdformat/pull/1190
  patches = lib.optional (lib.versionAtLeast version "9") (fetchpatch {
    url = "https://github.com/gazebosim/sdformat/commit/e8286cd012623173f40536c7fbea780bb65e7f0b.patch";
    hash = "sha256-WHpbN2n3JDV98SzWpPRtFE4xRB/jdlwMZagTsIZ1ixk=";
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
