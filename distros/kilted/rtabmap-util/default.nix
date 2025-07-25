
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport, laser-geometry, message-filters, nav-msgs, octomap-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, ros-environment, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-util";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_util/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "720fe5df1c3f73f0ceace65910984aea467a769f79af9914a5894e6512fe5214";
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
