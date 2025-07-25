
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, cv-bridge, geometry-msgs, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, nav-msgs, opencv, pluginlib, qt5, rclcpp, rclcpp-action, ros-environment, sensor-msgs, std-msgs, std-srvs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-mapviz-plugins";
  version = "2.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/mapviz_plugins/2.5.8-1.tar.gz";
    name = "2.5.8-1.tar.gz";
    sha256 = "3a887e3f4c385abc7f677b5a666d7ab7eb4b25605545bd0c7765d405b1815026";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-index-cpp cv-bridge geometry-msgs gps-msgs image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs nav-msgs opencv opencv.cxxdev pluginlib qt5.qtbase rclcpp rclcpp-action sensor-msgs std-msgs std-srvs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "Common plugins for the Mapviz visualization tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
