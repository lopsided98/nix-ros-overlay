
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-filter-madgwick, realsense2-camera, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rtabmap-examples";
  version = "0.23.13-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap_ros-release/archive/release/rolling/rtabmap_examples/0.23.13-2.tar.gz";
    name = "0.23.13-2.tar.gz";
    sha256 = "f8199215bfb84507ee70706485c65484e4ae4da652599e883ff57965481c31f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-filter-madgwick realsense2-camera rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's example launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
