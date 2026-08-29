
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, gps-msgs, mapviz, mapviz-interfaces, marti-common-msgs, pluginlib, python3Packages, qt-gui-cpp, qt5or6, rclcpp, rclpy, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-humble-multires-image";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/multires_image/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "d3fc2a20a70ec9078be34e43f552973a30d6ea55fb1f96a7201bef924e9567fb";
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
