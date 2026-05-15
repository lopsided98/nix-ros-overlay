
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, python3, python3Packages, qt6, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz2";
  version = "16.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz2/16.0.0-1.tar.gz";
    name = "16.0.0-1.tar.gz";
    sha256 = "a1b94f258cd74a606ff83da1e55fa99d6baaca116ca4de5f87bb67cc0834de97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt6.qtbase ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-lint-auto ament-lint-common geometry-msgs python3Packages.pyyaml rclcpp sensor-msgs ];
  propagatedBuildInputs = [ python3 rviz-common rviz-default-plugins rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D visualization tool for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
