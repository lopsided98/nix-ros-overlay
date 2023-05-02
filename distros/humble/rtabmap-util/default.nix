
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport, laser-geometry, message-filters, nav-msgs, octomap-msgs, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-rtabmap-util";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_util/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "60a3087ede985eec21d275414cf0dd1d10ab7c76f1a71d2177e4b9985a914ab9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge image-transport laser-geometry message-filters nav-msgs octomap-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs sensor-msgs std-msgs stereo-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's various useful nodes and nodelets.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
