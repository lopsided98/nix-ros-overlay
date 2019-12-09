
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-lint-cmake, geometry-msgs, rviz-ogre-vendor, ament-cmake-cpplint, ament-cmake, rviz-default-plugins, ament-cmake-uncrustify, rviz-common, qt5, ament-cmake-cppcheck, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-rviz2";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz2/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "bc01c3faa60d74d29b056a564d7202bde646ddbba48a13d74a6c38de676eabb5";
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
