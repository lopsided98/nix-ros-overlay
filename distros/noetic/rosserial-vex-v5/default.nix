
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-vex-v5";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_vex_v5/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "9409634a923e35f16bd0d82876113b8812601ea90bcfbc0276c0e032b19e0620";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for the VEX Cortex V5 Robot Brain platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
