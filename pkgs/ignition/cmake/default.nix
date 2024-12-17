{
  lib,
  stdenv,
  fetchFromGitHub,
  fetchpatch,
  cmake,
  pkg-config,
  majorVersion ? "2",
  version ? "2.16.0",
  srcHash ? "sha256-QiExRbIN/CtzB+jOknJokDxyqQGdkZQvVABJumYNCFI=",
  ...
}:

stdenv.mkDerivation rec {
  pname = "ignition-cmake${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-cmake";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  # Fix pkgconfig with absolute CMAKE_INSTALL_*DIR
  patches =
    lib.optional
      (
        majorVersion == "" # 0
      )
      (fetchpatch {
        url = "https://github.com/gazebosim/gz-cmake/commit/fe3100f11073a82a8faf63eb629de9f77fe2b331.patch";
        hash = "sha256-fgSAOZoQmZt/nAx2eBDyC+4+0m++crlZ2BGRH4UcuQY=";
      });

  nativeBuildInputs = [ cmake ];
  # pkg-config is needed to use some CMake modules in this package
  propagatedBuildInputs = [ pkg-config ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/cmake";
    description = "CMake Modules for Ignition Projects";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
