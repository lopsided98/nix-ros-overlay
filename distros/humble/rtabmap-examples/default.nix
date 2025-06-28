
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-filter-madgwick, realsense2-camera, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, tf2-ros, velodyne }:
buildRosPackage {
  pname = "ros-humble-rtabmap-examples";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_examples/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "961d12a0d30b9a2aa555b4b753f983672ec4579f1da6d84cc49905979b318263";
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
