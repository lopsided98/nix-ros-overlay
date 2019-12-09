
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-lint-cmake, geometry-msgs, rviz-ogre-vendor, ament-cmake-cpplint, ament-cmake, rviz-default-plugins, ament-cmake-uncrustify, rviz-common, qt5, ament-cmake-cppcheck, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-rviz2";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz2/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "27e060c12465283bb824dbfc80ec0dfaa547d05755c24c0c915efbb106c98822";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase rviz-common rviz-ogre-vendor ];
  checkInputs = [ sensor-msgs ament-cmake-lint-cmake geometry-msgs ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-cppcheck rclcpp ];
  propagatedBuildInputs = [ rviz-default-plugins rviz-common rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
