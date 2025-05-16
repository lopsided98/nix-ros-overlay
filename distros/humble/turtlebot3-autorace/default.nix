
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-autorace-camera, turtlebot3-autorace-detect, turtlebot3-autorace-mission }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-autorace";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_autorace-release/archive/release/humble/turtlebot3_autorace/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "1945285c6c7e70db32526ada2e2d4273a863d87974bc04f1e04db6b4d101bcbb";
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
