
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, eigen, eigen3-cmake-module, kdl-parser, kinematics-interface, pluginlib, ros2-control-cmake, ros2-control-test-assets, tf2-eigen-kdl }:
buildRosPackage {
  pname = "ros-jazzy-kinematics-interface-kdl";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/jazzy/kinematics_interface_kdl/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "a53fb8d0db2320f7ca723b3177ca386d930d5e89adb8f9df60cbd13d78460dfe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros eigen kdl-parser kinematics-interface pluginlib tf2-eigen-kdl ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "KDL implementation of ros2_control kinematics interface";
    license = with lib.licenses; [ asl20 ];
  };
}
