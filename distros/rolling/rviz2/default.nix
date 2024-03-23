
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, python3, python3Packages, qt5, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz2";
  version = "13.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz2/13.4.0-2.tar.gz";
    name = "13.4.0-2.tar.gz";
    sha256 = "afcef75ede14ae865cb818f33fd8d7023d21ba49302293d4353cc24c1f43da14";
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
