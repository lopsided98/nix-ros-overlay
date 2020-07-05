{ stdenv, lib, fetchFromGitHub, cmake, pkgconfig, ignition
, ignition-cmake ? ignition.cmake, ignition-common ? ignition.common, tinyxml-2
, curl, jsoncpp, libyaml, libzip
, majorVersion ? "4"
, version ? "4.1.0"
, srcSha256 ? "081chdfk00md2p24kzp5isi9hqhf13hm87pf7d2341bjylf1949v"
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

  nativeBuildInputs = [ cmake pkgconfig ];
  propagatedBuildInputs = [ ignition-cmake ignition-common tinyxml-2 curl 
    jsoncpp libyaml libzip ]
    ++ lib.optional (lib.versionAtLeast version "4") ignition.msgs;

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/fuel_tools";
    description = "Classes and tools for interacting with Ignition Fuel";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
