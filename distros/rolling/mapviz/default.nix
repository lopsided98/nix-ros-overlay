
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, freeglut, geometry-msgs, glew, image-transport, mapviz-interfaces, marti-common-msgs, pkg-config, pluginlib, qt5, rclcpp, ros-environment, rqt-gui, rqt-gui-cpp, std-srvs, swri-math-util, swri-transform-util, tf2, tf2-geometry-msgs, tf2-ros, xorg, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-mapviz";
  version = "2.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/mapviz/2.4.6-1.tar.gz";
    name = "2.4.6-1.tar.gz";
    sha256 = "7fa41b4ac24069c0cfd85515e61e287fdbc27271cae0135925bbcd272c89ebd5";
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
