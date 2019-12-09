
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rviz-visual-testing-framework, tinyxml-vendor, urdf, pluginlib, ament-cmake-cpplint, map-msgs, ament-cmake, ament-cmake-gmock, nav-msgs, resource-retriever, qt5, rclcpp, rviz-rendering, ament-cmake-gtest, rviz-rendering-tests, ament-index-cpp, ament-cmake-lint-cmake, laser-geometry, ament-cmake-uncrustify, rviz-common, visualization-msgs, ament-cmake-cppcheck }:
buildRosPackage {
  pname = "ros-dashing-rviz-default-plugins";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_default_plugins/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "e00f52eb0ba6e7b0755b9228490dd982eb1306222ddac9b47eb0a8fd0bf8c33b";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs tinyxml-vendor urdf resource-retriever pluginlib map-msgs laser-geometry qt5.qtbase rviz-common visualization-msgs rclcpp nav-msgs rviz-rendering ];
  checkInputs = [ ament-cmake-lint-cmake rviz-visual-testing-framework ament-cmake-cppcheck ament-cmake-cpplint rviz-rendering-tests ament-cmake-uncrustify ament-cmake-gmock ament-index-cpp ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs urdf tinyxml-vendor resource-retriever pluginlib map-msgs laser-geometry qt5.qtbase rviz-common visualization-msgs rclcpp nav-msgs rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
