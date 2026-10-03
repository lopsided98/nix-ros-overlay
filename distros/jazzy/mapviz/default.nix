
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, image-transport, mapviz-interfaces, opencv, pkg-config, pluginlib, qt-gui-cpp, qt5or6, rclcpp, rqt-gui, rqt-gui-cpp, std-msgs, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-mapviz";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "fd326b8455b00846934584047929da5fd94e8f152f3147d28c53c1c59acce7b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-msgs ];
  propagatedBuildInputs = [ geometry-msgs image-transport mapviz-interfaces opencv opencv.cxxdev pkg-config pluginlib qt-gui-cpp qt5or6.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "2D mapping display with extensible data overlays";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
