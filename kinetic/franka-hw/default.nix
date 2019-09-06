
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, franka-description, joint-limits-interface, gtest, catkin, rostest, controller-interface, urdf, libfranka, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-franka-hw";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_hw/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a949bc19bdcb19900eade604f210bfca6af6cdd2d652f0c834073064a82329ac";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface joint-limits-interface controller-interface urdf libfranka roscpp ];
  checkInputs = [ rostest gtest franka-description ];
  propagatedBuildInputs = [ hardware-interface joint-limits-interface controller-interface urdf libfranka roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_hw provides hardware interfaces for using Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
