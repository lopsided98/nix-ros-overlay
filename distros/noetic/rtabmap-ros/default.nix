
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-demos, rtabmap-examples, rtabmap-launch, rtabmap-legacy, rtabmap-msgs, rtabmap-python, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-ros";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_ros/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "dccf6ca4df14495e6d4af9037680e309143c841edf8b50855492f263be4e1696";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rtabmap-conversions rtabmap-costmap-plugins rtabmap-demos rtabmap-examples rtabmap-launch rtabmap-legacy rtabmap-msgs rtabmap-python rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map Stack";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
