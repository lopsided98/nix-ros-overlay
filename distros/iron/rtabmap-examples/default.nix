
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-filter-madgwick, realsense2-camera, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, tf2-ros, velodyne }:
buildRosPackage {
  pname = "ros-iron-rtabmap-examples";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_examples/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "2ebe5bf4cd5d969456d89dd8bae744360aea0204d68b59e408a605a042ad2552";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-filter-madgwick realsense2-camera rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz tf2-ros velodyne ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's example launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
