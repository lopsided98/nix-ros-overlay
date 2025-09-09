
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros, rviz2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-cartographer";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_cartographer/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "8a440cdce59dd5d88709f994067c08852559ff38801c0c0642fdc2945b076879";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cartographer-ros rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 launch scripts for cartographer";
    license = with lib.licenses; [ asl20 ];
  };
}
