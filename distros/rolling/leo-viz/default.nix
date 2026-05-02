
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-leo-viz";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/rolling/leo_viz/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "8e32b721f3063df83ffb9f0822368ebdc4225fbf822e64e9e5a61e14881d4cde";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization launch files and RViz configurations for Leo Rover";
    license = with lib.licenses; [ mit ];
  };
}
