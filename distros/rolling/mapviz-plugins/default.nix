
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, cv-bridge, geometry-msgs, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, nav-msgs, opencv, pluginlib, qt5, rclcpp, rclcpp-action, ros-environment, sensor-msgs, std-msgs, std-srvs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-mapviz-plugins";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/mapviz_plugins/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "e0255f477833ba3412ae55f4f3d12449fa0174a4a1253a519446f52aeea74d05";
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
