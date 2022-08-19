{ lib, stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, ignition-math ? ignition.math, ignition-msgs ? ignition.msgs
, ignition-utils ? ignition.utils, protobuf, libuuid, sqlite, cppzmq, zeromq
, majorVersion ? "11"
, version ? "11.1.0"
, srcHash ? "sha256-bOsulr8O5sRJ3XAQOP9xWCgoXqEH6M+IEFa0Sx6vze0="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-transport${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-transport";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math sqlite ]
    ++ lib.optional (lib.versionAtLeast version "5") ignition-utils;
  propagatedBuildInputs = [ protobuf cppzmq zeromq libuuid ignition-msgs ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/transport";
    description = "Provides fast and efficient asyncronous message passing, services, and data logging.";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
