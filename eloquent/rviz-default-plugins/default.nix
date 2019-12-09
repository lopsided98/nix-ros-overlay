
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rviz-visual-testing-framework, tinyxml-vendor, interactive-markers, urdf, pluginlib, ament-cmake-cpplint, map-msgs, ament-cmake, tf2, ament-cmake-gmock, nav-msgs, resource-retriever, tf2-geometry-msgs, qt5, rclcpp, rviz-rendering, tf2-ros, ament-cmake-gtest, rviz-rendering-tests, ament-index-cpp, ament-cmake-lint-cmake, laser-geometry, ament-cmake-uncrustify, rviz-common, visualization-msgs, ament-cmake-cppcheck }:
buildRosPackage {
  pname = "ros-eloquent-rviz-default-plugins";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_default_plugins/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "3699a6211d157a8a7ba4f23065e5d63d5f66821911b224419a7f22c5547f98f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs tinyxml-vendor urdf resource-retriever pluginlib interactive-markers map-msgs laser-geometry qt5.qtbase tf2-geometry-msgs rviz-common visualization-msgs tf2 rclcpp nav-msgs rviz-rendering tf2-ros ];
  checkInputs = [ ament-cmake-lint-cmake rviz-visual-testing-framework ament-cmake-cppcheck ament-cmake-cpplint rviz-rendering-tests ament-cmake-uncrustify ament-cmake-gmock ament-index-cpp ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs urdf interactive-markers resource-retriever pluginlib tinyxml-vendor map-msgs laser-geometry qt5.qtbase tf2-geometry-msgs rviz-common visualization-msgs tf2 rclcpp nav-msgs rviz-rendering tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
