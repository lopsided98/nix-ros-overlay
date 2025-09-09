
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface-pinocchio";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface_pinocchio-release/archive/release/rolling/kinematics_interface_pinocchio/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "1512acee9a6a18b7dbcf0b7313c5bc56e9e436035b7203833a4a4fed06f89d95";
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
