{ lib, stdenv, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake, ignition-common ? ignition.common
, ignition-msgs ? ignition.msgs, tinyxml-2, curl, jsoncpp, libyaml, libzip
, majorVersion ? "7"
, version ? "7.0.0"
, srcHash ? "sha256-yHiHfYjZuLOzly30nAE//r65ibzZ6DGoZSCQiWRXIHg="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-fuel-tools${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-fuel-tools";
    rev = "${pname}_${version}";
    hash = srcHash;
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
