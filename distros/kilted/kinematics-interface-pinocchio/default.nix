
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-kinematics-interface-pinocchio";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface_pinocchio-release/archive/release/kilted/kinematics_interface_pinocchio/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "d424bc4f52a183379362f65d6fb99d38282325865d16070dbacce1625bf0fb1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module kinematics-interface pinocchio pluginlib ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Pinocchio-based implementation of ros2_control kinematics interface";
    license = with lib.licenses; [ asl20 ];
  };
}
