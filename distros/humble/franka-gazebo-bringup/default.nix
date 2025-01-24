
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, franka-description, franka-ign-ros2-control, joint-state-publisher-gui, ros-gz, ros2controlcli, sdformat-urdf }:
buildRosPackage {
  pname = "ros-humble-franka-gazebo-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_gazebo_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "cca8577123ee5208f3a894eff7163b9ef0760ceeaf1ddac5d32e9acea95a6f54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ franka-description franka-ign-ros2-control joint-state-publisher-gui ros-gz ros2controlcli sdformat-urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains launch files for the franka_gazebo project";
    license = with lib.licenses; [ asl20 ];
  };
}
