
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-cartographer";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_cartographer/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "47107b3c7f51169334fd58dfe44077fdd85f9d8ca533d43e4273c874220978b7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
