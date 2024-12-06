{ lib, stdenv, fetchurl, cmake }:

let
  fetchData = { subdir, file, hash }: fetchurl {
    url = "mirror://sourceforge/geographiclib/${subdir}-distrib/${file}.tar.bz2";
    inherit hash;
  };
in stdenv.mkDerivation rec {
  pname = "geographiclib";
  version = "2.1.1";

  src = fetchurl {
    url = "mirror://sourceforge/${pname}/GeographicLib-${version}.tar.gz";
    hash = "sha256-KAgPxI4cdlYOsvjDBkBN6AwT01aH9nb/R6UWlVBuSgo=";
  };

  nativeBuildInputs = [ cmake ];

  cmakeFlags = [
    # Build script has lots of custom path variables that all assume relative
    # paths, requiring major changes to fix.
    "-DCMAKE_INSTALL_LIBDIR=lib"
    "-DGEOGRAPHICLIB_DATA=${placeholder "out"}/share/GeographicLib"
  ];

  data = [
    (fetchData { subdir = "geoids"; file = "egm96-5"; hash = "sha256-xGIk+Pcj3JFdlxefThWAqY1sdC/iuCzY/vDsqq0T5hQ="; })
  ];

  postInstall = ''
    mkdir -p "$out/share/GeographicLib"
    for d in "''${data[@]}"; do
      tar vxojf "$d" -C "$out/share/GeographicLib"
    done
  '';

  meta = with lib; {
    description = "Small set of C++ classes for performing geographic calculations";
    homepage = "https://geographiclib.sourceforge.io/";
    license = licenses.mit;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
