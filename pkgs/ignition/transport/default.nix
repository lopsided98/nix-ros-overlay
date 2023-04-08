{ lib, stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, ignition-math ? ignition.math, ignition-msgs ? ignition.msgs
, ignition-utils ? ignition.utils, protobuf, libuuid, sqlite, libsodium, cppzmq, zeromq
, majorVersion ? "11"
, version ? "11.4.0"
, srcHash ? "sha256-dI/MwR0+Vvi/+AZg9dDeqIFdIuBuJ/N2VEsnvMHu780="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-transport${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-transport";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math sqlite libsodium ]
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
