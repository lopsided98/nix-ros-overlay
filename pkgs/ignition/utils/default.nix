{ lib, stdenv, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake
, majorVersion ? "1"
, version ? "1.4.0"
, srcHash ? "sha256-+kV/iYA1XmMpgK6G4Q69uT1ZZexVAphX6mD5SRQGI7k="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-utils${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-utils";
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
