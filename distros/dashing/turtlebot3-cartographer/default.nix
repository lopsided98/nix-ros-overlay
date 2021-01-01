
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-cartographer";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_cartographer/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "a127d5c87f9c35520c6ebb026161c827008424afcd6b8034208c2eed47bd2b80";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
