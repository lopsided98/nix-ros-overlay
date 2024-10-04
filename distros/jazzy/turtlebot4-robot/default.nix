
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-base, turtlebot4-bringup, turtlebot4-diagnostics, turtlebot4-tests }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-robot";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/jazzy/turtlebot4_robot/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bf495787622428c97d8bdce781209f0ee070b345821dc169b1a73fc415e0fbbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-base turtlebot4-bringup turtlebot4-diagnostics turtlebot4-tests ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Robot Metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
