
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-cartographer";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/galactic/turtlebot3_cartographer/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "8092d9329741a0fa62ee2c49954f4dbf163071a729cbd06d0e88b821c86419ac";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
