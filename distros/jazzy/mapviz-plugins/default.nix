
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, assimp, cv-bridge, geometry-msgs, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, nav-msgs, nav2-msgs, opencv, pluginlib, qt5or6, rclcpp, rclcpp-action, ros-environment, rqt-gui-cpp, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, tf2-geometry-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mapviz-plugins";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz_plugins/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "661588c13b11ab4b74beddb878303f4c65e9d3373deea60d3864d75abd37ca5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rqt-gui-cpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp assimp cv-bridge geometry-msgs gps-msgs image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs nav-msgs nav2-msgs opencv opencv.cxxdev pluginlib qt5or6.qtbase rclcpp rclcpp-action sensor-msgs std-msgs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util tf2 tf2-geometry-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "Common plugins for the Mapviz visualization tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
