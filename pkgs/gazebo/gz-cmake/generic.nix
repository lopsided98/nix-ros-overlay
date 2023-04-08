{ lib, stdenv, fetchFromGitHub, fetchpatch, cmake, pkg-config
, version, srcHash
, ... }:

stdenv.mkDerivation rec {
  pname = "gz-cmake${lib.versions.major version}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-cmake";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  # pkg-config is needed to use some CMake modules in this package
  propagatedBuildInputs = [ pkg-config ];

  meta = with lib; {
    homepage = "https://gazebosim.org/libs/cmake";
    description = "A set of CMake modules that are used by the C++-based Gazebo projects. ";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
