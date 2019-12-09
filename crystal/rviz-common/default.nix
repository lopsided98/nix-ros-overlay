
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, tinyxml-vendor, pluginlib, ament-cmake-cpplint, ament-cmake, tf2, ament-cmake-gmock, sensor-msgs, rviz-ogre-vendor, resource-retriever, tf2-geometry-msgs, qt5, rclcpp, rviz-assimp-vendor, rviz-rendering, tf2-ros, ament-cmake-gtest, std-msgs, yaml-cpp-vendor, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-cppcheck }:
buildRosPackage {
  pname = "ros-crystal-rviz-common";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_common/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "a760eb485e5c4190de798a5fa267f061c5ca01e1cd85049063a94e7e7cc137e5";
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
