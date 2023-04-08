{ lib, stdenv, fetchFromGitHub, cmake, gz-cmake, gz-utils, eigen
, version, srcHash
, ... }:

stdenv.mkDerivation rec {
  pname = "gz-math${lib.versions.major version}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-math";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake gz-cmake ];
  buildInputs = [ gz-utils eigen ];

  meta = with lib; {
    homepage = "https://gazebosim.org/libs/math";
    description = "General purpose math library for robot applications. ";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
