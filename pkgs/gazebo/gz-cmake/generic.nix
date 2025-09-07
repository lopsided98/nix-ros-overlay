{ lib, stdenv, fetchFromGitHub, fetchpatch, cmake, pkg-config
, version, srcHash
, baseName ? "gz"
, ... }:

stdenv.mkDerivation rec {
  pname = "${baseName}-cmake${lib.versions.major version}";
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
    description = "Set of CMake modules used by the C++-based Gazebo projects";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
