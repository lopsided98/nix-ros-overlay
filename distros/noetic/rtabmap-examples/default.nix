
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-filter-madgwick, message-filters, realsense2-camera, robot-localization, roscpp, rtabmap-conversions, rtabmap-costmap-plugins, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-examples";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_examples/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "d6b9ed8312cb0a080b59ec754c5e7949223a616700b5cbb117ff91637831ba75";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-filter-madgwick message-filters realsense2-camera robot-localization roscpp rtabmap-conversions rtabmap-costmap-plugins rtabmap-demos rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz velodyne-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's example launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
