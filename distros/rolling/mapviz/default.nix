
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, freeglut, geometry-msgs, glew, image-transport, mapviz-interfaces, opencv, pkg-config, pluginlib, qt5, rclcpp, ros-environment, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, xorg, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-mapviz";
  version = "2.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/mapviz/2.5.10-1.tar.gz";
    name = "2.5.10-1.tar.gz";
    sha256 = "472e86646af6ab64e4232eadd140efb5112aca8c021f82c271cc40bfff03d64c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ros-environment ];
  propagatedBuildInputs = [ freeglut geometry-msgs glew image-transport mapviz-interfaces opencv opencv.cxxdev pluginlib qt5.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros xorg.libXi xorg.libXmu yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config qt5.qtbase ];

  meta = {
    description = "2D mapping display with extensible data overlays";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
