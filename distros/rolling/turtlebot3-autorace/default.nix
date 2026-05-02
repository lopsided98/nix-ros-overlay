
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-autorace-camera, turtlebot3-autorace-detect, turtlebot3-autorace-mission }:
buildRosPackage {
  pname = "ros-rolling-turtlebot3-autorace";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/rolling/turtlebot3_autorace/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "757cde5fd0911766e5ffa1c42edf5ea281a3ce69750ad3342bdbfa3385d56e12";
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
