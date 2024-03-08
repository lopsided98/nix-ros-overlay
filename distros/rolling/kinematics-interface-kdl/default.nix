
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, kdl-parser, kinematics-interface, pluginlib, ros2-control-test-assets, tf2-eigen-kdl }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface-kdl";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/rolling/kinematics_interface_kdl/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "48cdc8f420fe3ee6a08f57cae03e1aa3bb5b76eb90014d3eb7a9049432484deb";
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
