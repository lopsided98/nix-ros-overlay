
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, geometry-msgs, python3, python3Packages, qt6, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz2";
  version = "16.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz2/16.0.3-1.tar.gz";
    name = "16.0.3-1.tar.gz";
    sha256 = "fabc7ced7a2e1470085f3f94191f8dde8852e83e8a53ced38ee30eeed68d4b98";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core qt6.qtbase ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pytest ament-lint-auto ament-lint-common geometry-msgs python3Packages.pyyaml rclcpp sensor-msgs ];
  propagatedBuildInputs = [ python3 rviz-common rviz-default-plugins rviz-ogre-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "3D visualization tool for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
