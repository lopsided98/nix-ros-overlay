
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport, laser-geometry, message-filters, nav-msgs, octomap-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-util";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_util/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "23bce81b2720e3ffd7cb4b254ed2e3488163492ac48b569f72b17b877cc3b120";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-transport laser-geometry message-filters nav-msgs octomap-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's various useful nodes and nodelets.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
