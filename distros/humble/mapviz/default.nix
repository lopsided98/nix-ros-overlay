
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, image-transport, mapviz-interfaces, opencv, pkg-config, pluginlib, qt-gui-cpp, qt5or6, rclcpp, rqt-gui, rqt-gui-cpp, std-msgs, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-mapviz";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/mapviz/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "b89db28e9e975567cd25b496b60fce2c49ca56f685beb6071d720d17df0fd298";
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
