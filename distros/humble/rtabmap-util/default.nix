
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, grid-map-ros, image-geometry, image-transport, laser-geometry, message-filters, nav-msgs, octomap-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, ros-environment, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-rtabmap-util";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_util/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "2b679a10e6429fb5ba822fc7a3d12a16b6e008f1578abf78cde8e4d2b76dd660";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ cv-bridge grid-map-ros image-geometry image-transport laser-geometry message-filters nav-msgs octomap-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs rtabmap-sync sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's various useful nodes and nodelets.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
