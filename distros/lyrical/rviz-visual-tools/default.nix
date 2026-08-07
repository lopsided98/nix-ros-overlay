
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, eigen, eigen-stl-containers, eigen3-cmake-module, geometry-msgs, interactive-markers, launch, launch-ros, pluginlib, qt6, rclcpp, rclcpp-components, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, rviz2, sensor-msgs, shape-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-visual-tools";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_visual_tools-release/archive/release/lyrical/rviz_visual_tools/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "40bcbc641dee0d64d11e2d36b571361808ce41168c7cf1538dbbeb9cec40736f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python eigen eigen-stl-containers eigen3-cmake-module geometry-msgs interactive-markers launch launch-ros pluginlib qt6.qtbase rclcpp rclcpp-components rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering rviz2 sensor-msgs shape-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Utility functions for displaying and debugging data in Rviz via published markers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
