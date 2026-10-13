
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, eigen, geometry-msgs, navmap-core, navmap-ros, navmap-ros-interfaces, pluginlib, rclcpp, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-navmap-rviz-plugin";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_rviz_plugin/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ff14cb5bbb49f713ac1c69bd8b3bb76d55a8d84892917fa12429058f163aed0e";
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
