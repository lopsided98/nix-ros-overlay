
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kdl-parser, kinematics-interface, pluginlib, ros2-control-test-assets, tf2-eigen-kdl }:
buildRosPackage {
  pname = "ros-humble-kinematics-interface-kdl";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/humble/kinematics_interface_kdl/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "02adf21b0fb7aa08e6a09f571deb396d4d92d7d3ff63e247586871e838fe6b4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ eigen kdl-parser kinematics-interface pluginlib tf2-eigen-kdl ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''KDL implementation of ros2_control kinematics interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
