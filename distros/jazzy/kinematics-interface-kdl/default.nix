
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kdl-parser, kinematics-interface, pluginlib, ros2-control-test-assets, tf2-eigen-kdl }:
buildRosPackage {
  pname = "ros-jazzy-kinematics-interface-kdl";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/jazzy/kinematics_interface_kdl/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "7559ec004ae3d56fdd359cfb0d334d64a56c9b7a63bd7a03ff387115aa403104";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ eigen kdl-parser kinematics-interface pluginlib tf2-eigen-kdl ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "KDL implementation of ros2_control kinematics interface";
    license = with lib.licenses; [ asl20 ];
  };
}
