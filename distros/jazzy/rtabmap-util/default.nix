
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport, laser-geometry, message-filters, nav-msgs, octomap-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, ros-environment, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-util";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_util/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "6458be9a6bfa36d0645b7d52746cff5eb1781c50dadc97c1626cd3fd0c476791";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ cv-bridge image-transport laser-geometry message-filters nav-msgs octomap-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's various useful nodes and nodelets.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
