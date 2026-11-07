
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gps-msgs, mapviz, mapviz-interfaces, marti-common-msgs, pluginlib, python3Packages, qt5or6, rclcpp, rclpy, rqt-gui-cpp, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-multires-image";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/lyrical/multires_image/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "c7d855e044026ae875a05aed913670bd71a3f60bbbc8db4c24c91a448ef669fc";
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
