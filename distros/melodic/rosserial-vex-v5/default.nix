
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-melodic-rosserial-vex-v5";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_vex_v5/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "4f28ad67afe3ee95fc74913159fcf5c1121049490b7ab7cb95721ccd04122c80";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for the VEX Cortex V5 Robot Brain platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
