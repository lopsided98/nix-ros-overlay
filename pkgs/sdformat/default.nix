{ lib, stdenv, fetchurl, cmake, pkg-config, ruby, boost, ignition
, ignition-math ? ignition.math, tinyxml, urdfdom, urdfdom-headers
, console-bridge
, version ? "9.8.0"
, srcHash ? "sha256-kJz6qlxbmIrWOwvhLbb12ZCLbajMJ0p9Opzj6lzDtPs="
, ...
  }:

stdenv.mkDerivation rec {
  pname = "sdformat";
  inherit version;

  src = fetchurl { 
    url = "https://osrf-distributions.s3.amazonaws.com/${pname}/releases/${pname}-${version}.tar.bz2";
    hash = srcHash;
  };

  prePatch = ''
    substituteInPlace cmake/sdf_config.cmake.in \
      --replace "@CMAKE_INSTALL_PREFIX@/@LIB_INSTALL_DIR@" "@LIB_INSTALL_DIR@"
  '';

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
