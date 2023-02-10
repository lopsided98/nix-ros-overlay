
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-foxy-jackal-navigation";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_navigation/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "193cbac1fb85df49a57da294aacc4c917fe2a54141054c1c1bbc5a88f9c8d2c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
