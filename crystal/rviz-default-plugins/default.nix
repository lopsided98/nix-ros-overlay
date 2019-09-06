
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, rviz-common, geometry-msgs, ament-cmake-cpplint, ament-cmake-gtest, rclcpp, tinyxml-vendor, rviz-visual-testing-framework, ament-cmake-gmock, nav-msgs, urdf, resource-retriever, rviz-rendering-tests, ament-index-cpp, laser-geometry, visualization-msgs, pluginlib, ament-cmake-uncrustify, ament-cmake-cppcheck, qt5, ament-cmake-lint-cmake, map-msgs }:
buildRosPackage {
  pname = "ros-crystal-rviz-default-plugins";
  version = "5.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_default_plugins/5.1.0-0.tar.gz";
    name = "5.1.0-0.tar.gz";
    sha256 = "86db4edda8a8596f4b26e72fb17d9dbe7c48effc1b99a76d46dfd475312c9187";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-rendering pluginlib geometry-msgs qt5.qtbase nav-msgs urdf rclcpp tinyxml-vendor visualization-msgs resource-retriever laser-geometry rviz-common map-msgs ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest ament-cmake-cppcheck rviz-rendering-tests ament-cmake-lint-cmake ament-index-cpp rviz-visual-testing-framework ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-rendering pluginlib geometry-msgs qt5.qtbase laser-geometry nav-msgs urdf resource-retriever tinyxml-vendor rclcpp visualization-msgs rviz-common map-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Several default plugins for rviz to cover the basic functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
