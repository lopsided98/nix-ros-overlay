{ stdenv, lib, fetchFromGitHub, cmake, ignition
, ignition-cmake ? ignition.cmake, ignition-common ? ignition.common, tinyxml-2
, curl, jsoncpp, libyaml, libzip
, majorVersion ? "4"
, version ? "4.2.1"
, srcSha256 ? "1nkkg70z2b7b8aa5sk9hd0ggm0rymrynzn8rfkv82866nkkxc83i"
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
    ++ lib.optional (lib.versionAtLeast version "4") ignition.msgs;

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/fuel_tools";
    description = "Classes and tools for interacting with Ignition Fuel";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
