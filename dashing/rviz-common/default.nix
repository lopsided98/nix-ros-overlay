
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, tinyxml-vendor, pluginlib, ament-cmake-cpplint, ament-cmake, tf2, ament-cmake-gmock, sensor-msgs, rviz-ogre-vendor, resource-retriever, tf2-geometry-msgs, qt5, rclcpp, rviz-assimp-vendor, rviz-rendering, tf2-ros, ament-cmake-gtest, std-msgs, yaml-cpp-vendor, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-cppcheck }:
buildRosPackage {
  pname = "ros-dashing-rviz-common";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_common/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "e814715a70af5c9d2122d5782512446c24437ea9debdfa33ec81a1f52d9e9e08";
  };

  buildType = "ament_cmake";
  buildInputs = [ yaml-cpp-vendor sensor-msgs geometry-msgs rclcpp urdf tinyxml-vendor resource-retriever pluginlib std-msgs rviz-ogre-vendor qt5.qtbase tf2-geometry-msgs tf2 rviz-assimp-vendor rviz-rendering tf2-ros ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck ament-cmake-gtest ];
  propagatedBuildInputs = [ yaml-cpp-vendor sensor-msgs geometry-msgs rclcpp urdf tinyxml-vendor resource-retriever pluginlib std-msgs rviz-ogre-vendor qt5.qtbase tf2-geometry-msgs tf2 rviz-assimp-vendor rviz-rendering tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common rviz API, used by rviz plugins and applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
