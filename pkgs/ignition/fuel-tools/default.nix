{ lib, stdenv, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake, ignition-common ? ignition.common
, ignition-msgs ? ignition.msgs, tinyxml-2, curl, jsoncpp, libyaml, libzip
, majorVersion ? "6"
, version ? "6.0.0"
, srcSha256 ? "07c489yc0n7gry0czp85siaqy9ar03ggaj70lcphwq6zp98gzz4h"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-fuel-tools${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-fuel-tools";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  propagatedBuildInputs = [ ignition-common tinyxml-2 curl jsoncpp libyaml
    libzip ]
    ++ lib.optional (lib.versionAtLeast version "4") ignition-msgs;

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/fuel_tools";
    description = "Classes and tools for interacting with Ignition Fuel";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
