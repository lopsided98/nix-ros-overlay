
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, eigen, eigen-stl-containers, eigen3-cmake-module, geometry-msgs, interactive-markers, launch, launch-ros, pluginlib, qt5, rclcpp, rclcpp-components, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz2, sensor-msgs, shape-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-visual-tools";
  version = "4.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_visual_tools-release/archive/release/rolling/rviz_visual_tools/4.1.4-2.tar.gz";
    name = "4.1.4-2.tar.gz";
    sha256 = "55d7d332fe50ec7ebbbd54efd261f768be3d3009ab409f8dae57a6f84fc20a99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python eigen eigen-stl-containers eigen3-cmake-module geometry-msgs interactive-markers launch launch-ros pluginlib qt5.qtbase rclcpp rclcpp-components rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz2 sensor-msgs shape-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
