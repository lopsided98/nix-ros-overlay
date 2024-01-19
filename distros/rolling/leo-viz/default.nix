
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, leo-description, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-leo-viz";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_desktop-release/archive/release/rolling/leo_viz/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "0b84e91b55bc6a40788f9de0a66e5c91ccd36a05ee21b03ee3b6b535f3f1cdf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
