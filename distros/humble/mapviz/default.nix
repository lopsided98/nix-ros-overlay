
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freeglut, geometry-msgs, glew, image-transport, libxi, libxmu, mapviz-interfaces, opencv, pkg-config, pluginlib, qt5, rclcpp, ros-environment, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-mapviz";
  version = "2.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/mapviz/2.6.4-1.tar.gz";
    name = "2.6.4-1.tar.gz";
    sha256 = "7ee4c12b9d657176ccc14158a6f1689b22e82d6d976a3a1a9e6d449174717f4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ros-environment ];
  propagatedBuildInputs = [ freeglut geometry-msgs glew image-transport libxi libxmu mapviz-interfaces opencv opencv.cxxdev pluginlib qt5.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config qt5.qtbase ];

  meta = {
    description = "2D mapping display with extensible data overlays";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
