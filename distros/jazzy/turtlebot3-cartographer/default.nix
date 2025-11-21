
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-cartographer";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/jazzy/turtlebot3_cartographer/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "9c5773c17cb9c3638fb30bd76b13eeea9c8f7e47508cb1a64e234c7fa536ef82";
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
