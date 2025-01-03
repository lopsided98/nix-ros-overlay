
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, python3, python3Packages, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rviz2";
  version = "14.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/jazzy/rviz2/14.1.6-1.tar.gz";
    name = "14.1.6-1.tar.gz";
    sha256 = "0fb6c20cf2aa621561116f7f591a088dc82cca817eb777e5e878ac3a2a170528";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto geometry-msgs python3Packages.pyyaml rclcpp sensor-msgs ];
  propagatedBuildInputs = [ python3 rviz-common rviz-default-plugins rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D visualization tool for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
