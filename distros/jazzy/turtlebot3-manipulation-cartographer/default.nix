
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation-cartographer";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation_cartographer/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "b9c38dd4d5511d49577f692bb75ebc4a0df804ae6c174ef3c9891f5c40da1489";
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
