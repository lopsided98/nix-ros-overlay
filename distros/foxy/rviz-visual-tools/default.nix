
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, eigen, eigen-stl-containers, eigen3-cmake-module, geometry-msgs, interactive-markers, launch, launch-ros, qt5, rclcpp, rclcpp-components, rviz-ogre-vendor, rviz2, sensor-msgs, shape-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-rviz-visual-tools";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/foxy/rviz_visual_tools/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "3765050a7325d945d5865c7c55a65b785973d6c7c3da4da3e186aed95adcc187";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python eigen eigen-stl-containers eigen3-cmake-module geometry-msgs interactive-markers launch launch-ros qt5.qtbase qt5.qtx11extras rclcpp rclcpp-components rviz-ogre-vendor rviz2 sensor-msgs shape-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
