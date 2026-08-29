
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gps-msgs, mapviz, mapviz-interfaces, marti-common-msgs, pluginlib, python3Packages, qt-gui-cpp, qt5or6, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-kilted-multires-image";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/multires_image/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "c60e2a4002085c5722b0722ecd65eba9036f1b0e0f8c4e16c7ca8a7ebf9e9f4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs gps-msgs mapviz mapviz-interfaces marti-common-msgs pluginlib python3Packages.pyproj python3Packages.pyyaml qt-gui-cpp qt5or6.qtbase rclcpp rclpy swri-math-util swri-transform-util tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "multires_image";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
