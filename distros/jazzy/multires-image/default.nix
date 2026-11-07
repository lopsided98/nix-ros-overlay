
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gps-msgs, mapviz, mapviz-interfaces, marti-common-msgs, pluginlib, python3Packages, qt5or6, rclcpp, rclpy, rqt-gui-cpp, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-multires-image";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/multires_image/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "e8995b98e1c7bc9d1823d202309d82f6ac5b023d60f0b2b2ffc627f100da91a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rqt-gui-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gps-msgs mapviz mapviz-interfaces marti-common-msgs pluginlib python3Packages.pyproj python3Packages.pyyaml qt5or6.qtbase rclcpp rclpy swri-math-util swri-transform-util tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "multires_image";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
