{ lib, stdenv, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake
, majorVersion ? "1"
, version ? "1.0.0"
, srcSha256 ? "1y7x1gpwm2ws7sljxgk7yqsngjcgya4vi3xlasfl7hzh9lfps8zg"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-utils${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-utils";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
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
