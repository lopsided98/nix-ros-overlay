{ lib, stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, ignition-math ? ignition.math, ignition-msgs ? ignition.msgs
, ignition-utils ? ignition.utils, protobuf, libuuid, sqlite, cppzmq, zeromq
, majorVersion ? "10"
, version ? "10.0.0"
, srcSha256 ? "0jhqn1hai25mg1807ixhp903jg8gqwl8kqrm4na50q8gl6jnv7hi"
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
  buildInputs = [ ignition-math sqlite ]
    ++ lib.optional (lib.versionAtLeast version "5") ignition-utils;
  propagatedBuildInputs = [ protobuf cppzmq zeromq libuuid ignition-msgs ];

  cmakeFlags= [
    "-DCMAKE_INSTALL_INCLUDEDIR:PATH=include"
    "-DCMAKE_INSTALL_LIBDIR:PATH=lib"
  ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/transport";
    description = "Provides fast and efficient asyncronous message passing, services, and data logging.";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
