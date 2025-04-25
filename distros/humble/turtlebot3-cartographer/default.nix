
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-cartographer";
  version = "2.2.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_cartographer/2.2.9-1.tar.gz";
    name = "2.2.9-1.tar.gz";
    sha256 = "951ebd4f12aadc52918b57f428809c9f34709d92fe6fb45f0b197cb76c6c12cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for cartographer";
    license = with lib.licenses; [ asl20 ];
  };
}
