{ stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, ignition-math ? ignition.math, ignition-msgs ? ignition.msgs, protobuf
, libuuid, sqlite, cppzmq, zeromq
, majorVersion ? "8"
, version ? "8.1.0"
, srcSha256 ? "124zdc5mvryjkafc2iq3xmsiagv8mlgyknhwzmi3i7g5abmr58bk"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-transport${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-transport";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math sqlite ];
  propagatedBuildInputs = [ protobuf cppzmq zeromq libuuid ignition-msgs ];

  cmakeFlags= [
    "-DCMAKE_INSTALL_INCLUDEDIR:PATH=include"
    "-DCMAKE_INSTALL_LIBDIR:PATH=lib"
  ];

  meta = with stdenv.lib; {
    homepage = "https://ignitionrobotics.org/libs/transport";
    description = "Provides fast and efficient asyncronous message passing, services, and data logging.";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
