
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros, rviz2 }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-cartographer";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_cartographer/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "acd093fdecdd080afb44db63b5ad00e44c73102bd8be86c198733d3ae1a0dc77";
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
