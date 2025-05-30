
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, freeglut, geometry-msgs, glew, image-transport, mapviz-interfaces, marti-common-msgs, pkg-config, pluginlib, qt5, rclcpp, ros-environment, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, xorg, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-mapviz";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/mapviz/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "9d0af4c2ab6b59778974343e9457bd141d8b82efac80cfc911eeb6ae39904bd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ros-environment ];
  propagatedBuildInputs = [ cv-bridge freeglut geometry-msgs glew image-transport mapviz-interfaces marti-common-msgs pluginlib qt5.qtbase rclcpp rqt-gui rqt-gui-cpp std-srvs swri-math-util swri-transform-util tf2 tf2-geometry-msgs tf2-ros xorg.libXi xorg.libXmu yaml-cpp ];
  nativeBuildInputs = [ ament-cmake pkg-config qt5.qtbase ];

  meta = {
    description = "mapviz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
