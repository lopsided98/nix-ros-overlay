
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-base, turtlebot4-bringup, turtlebot4-diagnostics, turtlebot4-tests }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-robot";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/jazzy/turtlebot4_robot/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "28eba84e096ba6c5184239f1af8496f9b8c7f1efe15edf6122d0e4a7b37be11b";
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
