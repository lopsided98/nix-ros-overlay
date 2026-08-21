
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, assimp, cv-bridge, geometry-msgs, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, opencv, pluginlib, qt-gui-cpp, qt5or6, rclcpp, rclcpp-action, sensor-msgs, std-msgs, std-srvs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-mapviz-plugins";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/mapviz_plugins/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "b09c73c6a4aa91dc1841110bd839e173acc8a7b6b08e6e20ac8ffeecae3d4b23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp assimp cv-bridge geometry-msgs gps-msgs image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs opencv opencv.cxxdev pluginlib qt-gui-cpp qt5or6.qtbase rclcpp rclcpp-action sensor-msgs std-msgs std-srvs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util tf2 urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common plugins for the Mapviz visualization tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
