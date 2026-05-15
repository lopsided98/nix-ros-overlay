
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kinematics-interface, pinocchio, pluginlib, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-jazzy-kinematics-interface-pinocchio";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/jazzy/kinematics_interface_pinocchio/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "df236b2bfa1b203287520c92e3052cd0ce2f8701f4b5332dc9cdace5d1326428";
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
