{ lib, stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, majorVersion ? "6"
, version ? "6.13.0"
, srcHash ? "sha256-4kWbHdsDCCEgXHy3Dv4oZKdVBY4eJLKovYu+HUgkSjE="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-math${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-math";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/math";
    description = "Math classes and functions for robot applications";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
