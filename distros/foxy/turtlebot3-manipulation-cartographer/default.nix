
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros, rviz2 }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-cartographer";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_cartographer/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "98f46eecf7974a65b09ab0411c0fb051048cb711a8fce3e41e76d8c653297fbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
