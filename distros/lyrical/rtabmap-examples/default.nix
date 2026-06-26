
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, imu-filter-madgwick, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rtabmap-examples";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/lyrical/rtabmap_examples/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "22bdad54cc6532ca2254715a06d8bb8697b7b667f0147bc4a3090dc4efe0f2a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ imu-filter-madgwick rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's example launch files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
