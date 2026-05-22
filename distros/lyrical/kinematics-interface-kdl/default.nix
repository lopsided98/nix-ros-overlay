
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, eigen, eigen3-cmake-module, kdl-parser, kinematics-interface, pluginlib, ros2-control-cmake, tf2-eigen-kdl }:
buildRosPackage {
  pname = "ros-lyrical-kinematics-interface-kdl";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/lyrical/kinematics_interface_kdl/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "c0725b7dac0dbb03380258b3391b848890fb73fadcb2ab25249d0f2a4f48954b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ backward-ros eigen kdl-parser kinematics-interface pluginlib tf2-eigen-kdl ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "KDL implementation of ros2_control kinematics interface";
    license = with lib.licenses; [ asl20 ];
  };
}
