
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, python3, python3Packages, qt6, rclcpp, rviz-common, rviz-default-plugins, rviz-ogre-vendor, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz2";
  version = "15.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz2/15.1.15-1.tar.gz";
    name = "15.1.15-1.tar.gz";
    sha256 = "d351ef47ec3c4e6ecdc58f5758a486e979114225aef772b3bce3b44a9eb071bd";
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
