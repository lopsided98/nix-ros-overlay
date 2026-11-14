
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-cartographer";
  version = "2.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_cartographer/2.3.7-1.tar.gz";
    name = "2.3.7-1.tar.gz";
    sha256 = "48af513f6172872a7457fae1c9720667070ec10026ef38e494fa72544cdc0170";
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
