
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, rviz-default-plugins, sensor-msgs, ament-cmake-cppcheck, rviz-ogre-vendor, rviz-common, qt5, rclcpp, ament-cmake-lint-cmake, geometry-msgs, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-dashing-rviz2";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz2/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "27e060c12465283bb824dbfc80ec0dfaa547d05755c24c0c915efbb106c98822";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-ogre-vendor qt5.qtbase rviz-common ];
  checkInputs = [ ament-cmake-uncrustify sensor-msgs ament-cmake-cppcheck rclcpp ament-cmake-lint-cmake geometry-msgs ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-ogre-vendor rviz-common rviz-default-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D visualization tool for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
