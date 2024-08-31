
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, etsi-its-msgs-utils, pluginlib, qt5, rclcpp, ros-environment, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz-satellite, rviz2, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-etsi-its-rviz-plugins";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/iron/etsi_its_rviz_plugins/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "8087b8ca012c43c2eea5b1107aeff7b5cb794174d7aa5147664409a80066a426";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-msgs etsi-its-msgs-utils pluginlib qt5.qtbase rclcpp ros-environment rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz-satellite rviz2 tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz plugin for ROS 2 messages based on ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
