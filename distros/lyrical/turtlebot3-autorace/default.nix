
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-autorace-camera, turtlebot3-autorace-detect, turtlebot3-autorace-mission }:
buildRosPackage {
  pname = "ros-lyrical-turtlebot3-autorace";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/lyrical/turtlebot3_autorace/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "2a0f941b68146a4ba0c81c80e064313667fbbab07475b8f4b69d255b4c1f3724";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-autorace-camera turtlebot3-autorace-detect turtlebot3-autorace-mission ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 meta packages for turtlebot3_autorace";
    license = with lib.licenses; [ asl20 ];
  };
}
