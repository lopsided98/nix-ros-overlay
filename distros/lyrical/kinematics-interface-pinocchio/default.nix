
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-lyrical-kinematics-interface-pinocchio";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/lyrical/kinematics_interface_pinocchio/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "41e15c68bbc25ec2b4073dec307bcfc1490ddbb1b851a215c91b3546d482888f";
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
