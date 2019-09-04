
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, rviz-default-plugins, sensor-msgs, ament-cmake-cppcheck, rviz-ogre-vendor, rviz-common, qt5, rclcpp, ament-cmake-lint-cmake, geometry-msgs, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-crystal-rviz2";
  version = "5.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz2/5.1.0-0.tar.gz;
    sha256 = "152a838d3f477c960cf567c50e70ba0cec5645c2bbb881a0cda952ccb2ddd4b8";
  };

  buildInputs = [ rviz-ogre-vendor qt5.qtbase rviz-common ];
  checkInputs = [ ament-cmake-uncrustify sensor-msgs ament-cmake-cppcheck rclcpp ament-cmake-lint-cmake geometry-msgs ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-ogre-vendor rviz-common rviz-default-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
