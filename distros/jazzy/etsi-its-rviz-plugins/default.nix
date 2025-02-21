
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, etsi-its-mapem-ts-msgs, etsi-its-msgs-utils, etsi-its-spatem-ts-msgs, pluginlib, python3Packages, qt5, rclcpp, ros-environment, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz-satellite, rviz2, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-rviz-plugins";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_rviz_plugins/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "4ef14ee5c2034e40a5a91384464f41e2f3775aed2c4e26a7b751680018af17d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs etsi-its-mapem-ts-msgs etsi-its-msgs-utils etsi-its-spatem-ts-msgs pluginlib python3Packages.pyproj qt5.qtbase rclcpp ros-environment rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz-satellite rviz2 tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz plugin for ROS 2 messages based on ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
