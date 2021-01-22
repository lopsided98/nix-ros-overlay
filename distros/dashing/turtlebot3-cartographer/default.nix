
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-cartographer";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_cartographer/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "ad251e0bdfce42c93692c26b261aa1f3045157a482ba3f9f3c93a92fd16507d8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
