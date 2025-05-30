
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-complementary-filter, imu-filter-madgwick, message-filters, realsense2-camera, robot-localization, roscpp, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-examples";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_examples/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "4aab0f153fad57ae5a5e9d5e246051e603c1a746970973d37c7b88425a864e48";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-complementary-filter imu-filter-madgwick message-filters realsense2-camera robot-localization roscpp rtabmap-conversions rtabmap-costmap-plugins rtabmap-demos rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's example launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
