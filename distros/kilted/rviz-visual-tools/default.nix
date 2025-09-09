
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, eigen, eigen-stl-containers, eigen3-cmake-module, geometry-msgs, interactive-markers, launch, launch-ros, pluginlib, qt5, rclcpp, rclcpp-components, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz2, sensor-msgs, shape-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-rviz-visual-tools";
  version = "4.1.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_visual_tools-release/archive/release/kilted/rviz_visual_tools/4.1.4-4.tar.gz";
    name = "4.1.4-4.tar.gz";
    sha256 = "ace88eb4b69a609b9128162113c3f6b8ad384cfeb0d2259fcd3b9de83ebbdf22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python eigen eigen-stl-containers eigen3-cmake-module geometry-msgs interactive-markers launch launch-ros pluginlib qt5.qtbase rclcpp rclcpp-components rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz2 sensor-msgs shape-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Utility functions for displaying and debugging data in Rviz via published markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
