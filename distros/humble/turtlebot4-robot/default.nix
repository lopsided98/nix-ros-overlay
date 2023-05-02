
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-base, turtlebot4-bringup, turtlebot4-diagnostics, turtlebot4-tests }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-robot";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_robot/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6a186f2c52e2daf508dfbde69442a9181dce6cf250a52eb84b73800b3a6e5b3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-base turtlebot4-bringup turtlebot4-diagnostics turtlebot4-tests ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Robot Metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
