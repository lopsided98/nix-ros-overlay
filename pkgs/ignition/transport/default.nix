{ stdenv, fetchFromGitHub, cmake, pkgconfig, ignition
, ignition-cmake ? ignition.cmake, ignition-math ? ignition.math
, ignition-msgs ? ignition.msgs, protobuf, libuuid, sqlite, cppzmq, zeromq
, majorVersion ? "8"
, version ? "8.0.0"
, srcSha256 ? "01paq94l3xnh6zzanllis3yzxylzrd1dax8q9i9dv5qab58723ia"
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

  nativeBuildInputs = [ cmake pkgconfig ];
  buildInputs = [ ignition-math sqlite ];
  propagatedBuildInputs = [ ignition-cmake protobuf cppzmq zeromq libuuid
    ignition-msgs ];

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
