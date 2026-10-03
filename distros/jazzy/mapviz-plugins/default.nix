
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, assimp, cv-bridge, geometry-msgs, gps-msgs, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, nav-msgs, nav2-msgs, opencv, pluginlib, qt5or6, rclcpp, rclcpp-action, ros-environment, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, tf2, tf2-geometry-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mapviz-plugins";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz_plugins/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "d800b1b7c381c00d880a62addeb18f3538f818656278e8168a74d06b436a5e26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp assimp cv-bridge geometry-msgs gps-msgs image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs nav-msgs nav2-msgs opencv opencv.cxxdev pluginlib qt5or6.qtbase rclcpp rclcpp-action sensor-msgs std-msgs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util tf2 tf2-geometry-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "Common plugins for the Mapviz visualization tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
