
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, cv-bridge, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, nav-msgs, pluginlib, qt5, rclcpp, rclcpp-action, ros-environment, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mapviz-plugins";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz_plugins/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "d7ab0f15a80a223721928d6b1ff12b736f9113a51f2fb8d837f109e4381134df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-index-cpp cv-bridge gps-msgs image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs nav-msgs pluginlib qt5.qtbase rclcpp rclcpp-action sensor-msgs std-msgs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util tf2 visualization-msgs ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "Common plugins for the Mapviz visualization tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
