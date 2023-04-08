{ lib, stdenv, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake
, majorVersion ? "1"
, version ? "1.5.1"
, srcHash ? "sha256-Ymlw1SBoSlHwxe/4E3jdMy8ECCFNy8YGboqTQi6UIs4="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-utils${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-utils";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ignition-cmake ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/common";
    description = "Classes and functions for robot applications";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
