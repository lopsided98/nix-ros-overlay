
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-index-cpp, geometry-msgs, laser-geometry, map-msgs, nav-msgs, pluginlib, qt5, rclcpp, resource-retriever, rviz-common, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tinyxml-vendor, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-dashing-rviz-default-plugins";
  version = "6.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_default_plugins/6.1.8-1.tar.gz";
    name = "6.1.8-1.tar.gz";
    sha256 = "7dda03501d2b7488b9f241111d0c75489a2e57e0b5f6f8ba40b56f517ffd7d87";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-index-cpp rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry map-msgs nav-msgs pluginlib qt5.qtbase rclcpp resource-retriever rviz-common rviz-rendering tinyxml-vendor urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
