
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, franka-description, joint-limits-interface, gtest, catkin, rostest, controller-interface, urdf, libfranka, roscpp }:
buildRosPackage {
  pname = "ros-melodic-franka-hw";
  version = "0.6.0-r1";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_hw/0.6.0-1.tar.gz;
    sha256 = "33ab406de975e57944c4df7879a3e9cc3015e3e44e6acccf5df49bd79220d5aa";
  };

  buildInputs = [ hardware-interface joint-limits-interface controller-interface urdf libfranka roscpp ];
  checkInputs = [ rostest gtest franka-description ];
  propagatedBuildInputs = [ hardware-interface joint-limits-interface controller-interface urdf libfranka roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_hw provides hardware interfaces for using Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
