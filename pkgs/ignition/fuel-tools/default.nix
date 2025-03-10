{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  ignition,
  ignition-cmake ? ignition.cmake,
  ignition-common ? ignition.common,
  ignition-msgs ? ignition.msgs,
  tinyxml-2,
  curl,
  jsoncpp,
  libyaml,
  libzip,
  majorVersion ? "7",
  version ? "7.2.2",
  srcHash ? "sha256-SgU7OuD6OoSvC2UJyZUFjc6IOMY7tukGGg5Ef5pGCPY=",
  ...
}:

stdenv.mkDerivation rec {
  pname = "ignition-fuel-tools${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-fuel-tools";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  propagatedBuildInputs = [
    ignition-common
    tinyxml-2
    curl
    jsoncpp
    libyaml
    libzip
    ignition-msgs
  ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/fuel_tools";
    description = "Classes and tools for interacting with Ignition Fuel";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
