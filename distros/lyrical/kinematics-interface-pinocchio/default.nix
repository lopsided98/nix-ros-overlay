
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pinocchio, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pluginlib, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-lyrical-kinematics-interface-pinocchio";
  version = "2.4.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/lyrical/kinematics_interface_pinocchio/2.4.0-4.tar.gz";
    name = "2.4.0-4.tar.gz";
    sha256 = "d764a63be0745adf74770107dbfe516414db485329f86897eca76a07c25025f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ _unresolved_pinocchio eigen eigen3-cmake-module kinematics-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Pinocchio-based implementation of ros2_control kinematics interface";
    license = with lib.licenses; [ asl20 ];
  };
}
