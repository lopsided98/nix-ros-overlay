
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, franka-description, gtest, hardware-interface, joint-limits-interface, libfranka, roscpp, rostest, urdf }:
buildRosPackage {
  pname = "ros-kinetic-franka-hw";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_hw/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a949bc19bdcb19900eade604f210bfca6af6cdd2d652f0c834073064a82329ac";
  };

  buildType = "catkin";
  checkInputs = [ franka-description gtest rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface joint-limits-interface libfranka roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_hw provides hardware interfaces for using Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
