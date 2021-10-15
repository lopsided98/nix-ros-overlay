
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, geometry-msgs, message-filters, pluginlib, qt5, rclcpp, resource-retriever, rviz-assimp-vendor, rviz-ogre-vendor, rviz-rendering, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tinyxml-vendor, urdf, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-rviz-common";
  version = "8.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_common/8.2.5-1.tar.gz";
    name = "8.2.5-1.tar.gz";
    sha256 = "ecbce1ad75ee15c9f6f2ac49405cd13d7a210cce5b0dded7da8ebb5d5e917426";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ];
  propagatedBuildInputs = [ geometry-msgs message-filters pluginlib qt5.qtbase rclcpp resource-retriever rviz-assimp-vendor rviz-ogre-vendor rviz-rendering sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros tinyxml-vendor urdf yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common rviz API, used by rviz plugins and applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
