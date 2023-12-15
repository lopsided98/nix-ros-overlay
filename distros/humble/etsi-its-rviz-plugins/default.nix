
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-msgs, pluginlib, qt5, rclcpp, ros-environment, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz-satellite, rviz2, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-etsi-its-rviz-plugins";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/humble/etsi_its_rviz_plugins/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ba47cd9281873630feaf82537e7cd880acb0f5ca1a5d2a59b4409363c8fcd939";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-msgs pluginlib qt5.qtbase rclcpp ros-environment rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz-satellite rviz2 tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RViz plugin for ROS 2 messages based on ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
