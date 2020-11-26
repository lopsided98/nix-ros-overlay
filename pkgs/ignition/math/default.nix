{ stdenv, fetchFromGitHub, cmake, ignition, ignition-cmake ? ignition.cmake
, majorVersion ? "6"
, version ? "6.7.0"
, srcSha256 ? "0hyhlqgjx3yrmk1fgp1brgq2lk8l26sihn8yfmm0garbxi70zspb"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-math${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-math";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];

  cmakeFlags = [
    "-DCMAKE_INSTALL_INCLUDEDIR:PATH=include"
    "-DCMAKE_INSTALL_LIBDIR:PATH=lib"
  ];

  meta = with stdenv.lib; {
    homepage = "https://ignitionrobotics.org/libs/math";
    description = "Math classes and functions for robot applications";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
