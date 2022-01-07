
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, geometry-msgs, interactive-markers, laser-geometry, map-msgs, nav-msgs, pluginlib, qt5, rclcpp, resource-retriever, rviz-common, rviz-ogre-vendor, rviz-rendering, rviz-rendering-tests, rviz-visual-testing-framework, tf2, tf2-geometry-msgs, tf2-ros, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-rviz-default-plugins";
  version = "8.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/galactic/rviz_default_plugins/8.5.0-3.tar.gz";
    name = "8.5.0-3.tar.gz";
    sha256 = "714e4bde7fa34ff30f3186e5ba397bf3799edb67c74849ba01e1510264fbd8b5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-index-cpp ament-lint-auto rviz-rendering-tests rviz-visual-testing-framework ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers laser-geometry map-msgs nav-msgs pluginlib qt5.qtbase rclcpp resource-retriever rviz-common rviz-ogre-vendor rviz-rendering tf2 tf2-geometry-msgs tf2-ros urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
