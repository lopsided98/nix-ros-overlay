{ lib, stdenv, fetchFromGitHub, cmake, gz-cmake
, version, srcHash
, ... }:

stdenv.mkDerivation rec {
  pname = "gz-utils${lib.versions.major version}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-utils";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake gz-cmake ];

  meta = with lib; {
    homepage = "https://gazebosim.org/libs/utils";
    description = "Classes and functions for robot applications";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
