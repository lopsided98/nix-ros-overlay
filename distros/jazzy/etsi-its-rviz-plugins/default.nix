
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-msgs, etsi-its-cpm-ts-msgs, etsi-its-denm-msgs, etsi-its-mapem-ts-msgs, etsi-its-msgs-utils, etsi-its-spatem-ts-msgs, pluginlib, python3Packages, qt5, rclcpp, ros-environment, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz-satellite, rviz2, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-rviz-plugins";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_rviz_plugins/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "be961fed83e6b7c409735833dc8125937c7477cae5df7f1840f0acd2604f74bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-msgs etsi-its-cpm-ts-msgs etsi-its-denm-msgs etsi-its-mapem-ts-msgs etsi-its-msgs-utils etsi-its-spatem-ts-msgs pluginlib python3Packages.pyproj qt5.qtbase rclcpp ros-environment rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz-satellite rviz2 tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz plugins for etsi_its_messages";
    license = with lib.licenses; [ mit ];
  };
}
