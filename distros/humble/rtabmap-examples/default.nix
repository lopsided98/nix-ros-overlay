
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-filter-madgwick, realsense2-camera, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, tf2-ros, velodyne }:
buildRosPackage {
  pname = "ros-humble-rtabmap-examples";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_examples/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "31de3d6565f8f02d4448bb3b2717ca78bae14478f43d015de69a25f3e1647a21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-filter-madgwick realsense2-camera rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz tf2-ros velodyne ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's example launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
