
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, eigen, geometry-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-navmap-rviz-plugin";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_rviz_plugin/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "46f3574d25d2b4a469763a9c909692bf0b9303a305855fab041606a987c45fe2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ eigen geometry-msgs navmap-core navmap-ros navmap-ros-interfaces pluginlib rclcpp rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz2 display plugin for NavMap surfaces and layers.";
    license = with lib.licenses; [ asl20 ];
  };
}
