
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-lint-cmake, geometry-msgs, rviz-ogre-vendor, ament-cmake-cpplint, ament-cmake, rviz-default-plugins, ament-cmake-uncrustify, rviz-common, qt5, ament-cmake-cppcheck, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-rviz2";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz2/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "4235d8d387775928810920b5331611a5511258c4a1eb2e9440a051ca48836294";
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
