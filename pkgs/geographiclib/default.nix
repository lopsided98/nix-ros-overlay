{ lib, stdenv, fetchurl, cmake }:

let
  fetchData = { subdir, file, sha256 }: fetchurl {
    url = "mirror://sourceforge/geographiclib/${subdir}-distrib/${file}.tar.bz2";
    inherit sha256;
  };
in stdenv.mkDerivation rec {
  pname = "geographiclib";
  version = "1.52";

  src = fetchurl {
    url = "mirror://sourceforge/${pname}/GeographicLib-${version}.tar.gz";
    sha256 = "0axcx3040a2b1qazsp0n678qf1rl18rl94kwz4pimxgb2v6lahax";
  };

  nativeBuildInputs = [ cmake ];

  cmakeFlags = [ "-DGEOGRAPHICLIB_DATA=${placeholder "out"}/share/GeographicLib" ];

  data = [
    (fetchData { subdir = "geoids"; file = "egm96-5"; sha256 = "05762fnsmv7hzvc2rf725xs6r3d9h0alx7qpjxfr3p13yzw28qn4"; })
  ];

  postInstall = ''
    mkdir -p "$out/share/GeographicLib"
    for d in "''${data[@]}"; do
      tar vxojf "$d" -C "$out/share/GeographicLib"
    done
  '';

  meta = with lib; {
    description = "A small set of C++ classes for performing geographic calculations.";
    homepage = "https://geographiclib.sourceforge.io/";
    license = licenses.mit;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
