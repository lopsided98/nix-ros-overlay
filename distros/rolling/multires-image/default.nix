
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gps-msgs, mapviz, mapviz-interfaces, marti-common-msgs, pluginlib, python3Packages, qt-gui-cpp, qt5or6, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-rolling-multires-image";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/multires_image/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "3831148c69702c277be140a736f265f96211f6a1ca1ec44d386e1eacbb4a0b0d";
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
