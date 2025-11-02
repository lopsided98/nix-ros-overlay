{ lib, stdenv, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake, ignition-math ? ignition.math
, ignition-msgs ? ignition.msgs, ignition-utils ? ignition.utils, protobuf
, libuuid, sqlite, libsodium, cppzmq, zeromq
, majorVersion ? "11"
, version ? "11.4.1"
, srcHash ? "sha256-wQ/ugKYopWgSaa6tqPrp8oQexPpnA6fa28L383OGNXM="
, commitHash ? null
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-transport${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-transport";
    rev = if ! builtins.isNull commitHash then commitHash else "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math sqlite libsodium ignition-utils ];
  propagatedBuildInputs = [ protobuf cppzmq zeromq libuuid ignition-msgs ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/transport";
    description = "Provides fast and efficient asynchronous message passing, services, and data logging";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
