
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, tinyxml-vendor, pluginlib, ament-cmake-cpplint, ament-cmake, tf2, ament-cmake-gmock, sensor-msgs, rviz-ogre-vendor, resource-retriever, tf2-geometry-msgs, qt5, rclcpp, rviz-assimp-vendor, rviz-rendering, tf2-ros, ament-cmake-gtest, message-filters, std-msgs, yaml-cpp-vendor, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-cppcheck }:
buildRosPackage {
  pname = "ros-eloquent-rviz-common";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_common/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "c1a38568b91cd4bb43b1a61546794e4b42d2c8e30cf09f9e081c26a871cb00fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor message-filters geometry-msgs rclcpp urdf tinyxml-vendor resource-retriever pluginlib std-msgs rviz-ogre-vendor sensor-msgs qt5.qtbase tf2-geometry-msgs tf2 rviz-assimp-vendor rviz-rendering tf2-ros ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck ament-cmake-gtest ];
  propagatedBuildInputs = [ yaml-cpp-vendor sensor-msgs geometry-msgs rclcpp urdf tinyxml-vendor resource-retriever pluginlib std-msgs rviz-ogre-vendor message-filters qt5.qtbase tf2-geometry-msgs tf2 rviz-assimp-vendor rviz-rendering tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common rviz API, used by rviz plugins and applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
