{ lib, stdenv, fetchFromGitHub, fetchpatch, cmake, ignition
, ignition-cmake ? ignition.cmake, ignition-math ? ignition.math
, ignition-msgs ? ignition.msgs, ignition-utils ? ignition.utils, protobuf
, libuuid, sqlite, libsodium, cppzmq, zeromq
, majorVersion ? "11"
, version ? "11.4.1"
, srcHash ? "sha256-wQ/ugKYopWgSaa6tqPrp8oQexPpnA6fa28L383OGNXM="
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

  patches =
    # Fix compatibility with protobuf 22
    lib.optional (majorVersion == "8") (fetchpatch {
      url = "https://github.com/gazebosim/gz-transport/commit/3d68f46329ec6e4efe20c5125caceae83d4f8e45.patch";
      hash = "sha256-23qSKsMSVL4sXFQrTggyUmxBJm/6RsKsB5EI09GRNKQ=";
    });

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math sqlite libsodium ignition-utils ];
  propagatedBuildInputs = [ protobuf cppzmq zeromq libuuid ignition-msgs ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/transport";
    description = "Provides fast and efficient asyncronous message passing, services, and data logging.";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
