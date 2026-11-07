
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, image-transport, mapviz-interfaces, opencv, pkg-config, pluginlib, qt-gui-cpp, qt5or6, rclcpp, rqt-gui, rqt-gui-cpp, std-msgs, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-mapviz";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/mapviz/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "4556001a569e4d72bee3d14b1f3dd17a45de5ba05245b469fff30ec59954b8b3";
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
