
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, python3, python3Packages, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rviz2";
  version = "15.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz2/15.0.7-1.tar.gz";
    name = "15.0.7-1.tar.gz";
    sha256 = "da584e0f3c792d68d7757aa3da77eac4d7675966df8b1679884aa80522943ab7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-lint-auto ament-lint-common geometry-msgs python3Packages.pyyaml rclcpp sensor-msgs ];
  propagatedBuildInputs = [ python3 rviz-common rviz-default-plugins rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D visualization tool for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
