
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, assimp, cv-bridge, geometry-msgs, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, nav-msgs, opencv, pluginlib, qt-gui-cpp, qt6, rclcpp, rclcpp-action, sensor-msgs, std-msgs, std-srvs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mapviz-plugins";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/lyrical/mapviz_plugins/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2981d8ea19d52a5a89b3f8a1e817aaf9cf7c704506fbb2bea28a9acfe57fb210";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp assimp cv-bridge geometry-msgs gps-msgs image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs nav-msgs opencv opencv.cxxdev pluginlib qt-gui-cpp qt6.qtbase rclcpp rclcpp-action sensor-msgs std-msgs std-srvs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util tf2 urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common plugins for the Mapviz visualization tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
