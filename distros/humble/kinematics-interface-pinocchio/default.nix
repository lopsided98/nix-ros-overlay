
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-kinematics-interface-pinocchio";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/justagist/kinematics_interface_pinocchio-release/archive/release/humble/kinematics_interface_pinocchio/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "2168a0bb8e266efbc66f1cf2ab0948caabdd283d70da2d9755de32e0ebe87155";
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
