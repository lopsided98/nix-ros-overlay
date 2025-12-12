
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-kinematics-interface-pinocchio";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/kilted/kinematics_interface_pinocchio/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "3e3d7193f55587499498f7f0a42aa72b14093f8186bf371d310f030d0a4764ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module kinematics-interface pinocchio pluginlib ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Pinocchio-based implementation of ros2_control kinematics interface";
    license = with lib.licenses; [ asl20 ];
  };
}
