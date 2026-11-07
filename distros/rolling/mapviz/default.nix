
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, image-transport, mapviz-interfaces, opencv, pkg-config, pluginlib, qt-gui-cpp, qt5or6, rclcpp, rqt-gui, rqt-gui-cpp, std-msgs, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-mapviz";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/mapviz/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "a3120243edb3866c6db5c425ee8e93500db48e95f2a47b4253d98a7636ca663d";
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
