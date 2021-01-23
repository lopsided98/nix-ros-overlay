
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-index-cpp, geometry-msgs, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, qt5, rclcpp, resource-retriever, rviz-common, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, tinyxml-vendor, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rviz-default-plugins";
  version = "7.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_default_plugins/7.0.7-1.tar.gz";
    name = "7.0.7-1.tar.gz";
    sha256 = "321891446953428eb5e361bf23557d8da7a25a4102ba6eb4fb0058e7b8d9a2bc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-index-cpp rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers laser-geometry map-msgs nav-msgs pluginlib qt5.qtbase rclcpp resource-retriever rviz-common rviz-rendering tf2 tf2-geometry-msgs tf2-ros tinyxml-vendor urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
