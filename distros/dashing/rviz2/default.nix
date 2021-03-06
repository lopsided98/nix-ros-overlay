
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, geometry-msgs, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-rviz2";
  version = "6.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz2/6.1.8-1.tar.gz";
    name = "6.1.8-1.tar.gz";
    sha256 = "403d30f09bc3016ebf3bbe7b4ffb3f26cd2d016b79145bbf6bd9f0ac7f831d33";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify geometry-msgs rclcpp sensor-msgs ];
  propagatedBuildInputs = [ rviz-common rviz-default-plugins rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
