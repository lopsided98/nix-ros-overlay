{ lib, stdenv, fetchFromGitHub, cmake, tinyxml-2, ignition
, ignition-cmake ? ignition.cmake, protobuf, ignition-math ? ignition.math
, majorVersion ? "5"
, version ? "5.3.0"
, srcSha256 ? "01y2cj0yi2i540k7mxlqkal96pdchz1925lzz2nvh65mwf0azi24"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-msgs${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-msgs";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  propagatedBuildInputs = [ protobuf ignition-math ]
    ++ lib.optional (lib.versionAtLeast version "5") tinyxml-2;

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/msgs";
    description = "Protobuf messages and functions for robot applications.";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
