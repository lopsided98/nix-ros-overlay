{ lib, stdenv, fetchFromGitHub, fetchpatch, cmake, tinyxml-2, ignition
, ignition-cmake ? ignition.cmake, protobuf, ignition-math ? ignition.math
, majorVersion ? "8"
, version ? "8.6.0"
, srcHash ? "sha256-Rk9as7eQ6gmY2bYCHv4TnwBX5B+He+0SEEAQhCpfUaM="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-msgs${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-msgs";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  patches =
    # Fix compatibility with Protobuf 3.20
    lib.optional (majorVersion == "" /* 1 */) (fetchpatch {
      url = "https://github.com/gazebosim/gz-msgs/commit/faaf25d5ef991798b301b0c8b7a4c15904016695.patch";
      hash = "sha256-jVZCKGDTEdgHiEKItv+rbcLW0L2cs2EryoJe5qcoOsU=";
    });

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  propagatedBuildInputs = [ protobuf ignition-math ]
    ++ lib.optional (lib.versionAtLeast version "5") tinyxml-2;

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/msgs";
    description = "Protobuf messages and functions for robot applications.";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
