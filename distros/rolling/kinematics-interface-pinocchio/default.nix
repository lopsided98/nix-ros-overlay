
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface-pinocchio";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/rolling/kinematics_interface_pinocchio/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "d6ea306805a68ec5e5ca3fc5b97af3f64484cb7048bc78b02ae6d427c676dfb4";
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
