
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-demos, rtabmap-examples, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-python, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-humble-rtabmap-ros";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_ros/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "5203a81f62f85b973e4539cf198cbe768b2081c6557ed8d1610e8329303d4cf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-conversions rtabmap-costmap-plugins rtabmap-demos rtabmap-examples rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-python rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map Stack";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
