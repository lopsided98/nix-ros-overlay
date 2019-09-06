
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, rosserial-python, rosserial-client }:
buildRosPackage {
  pname = "ros-melodic-rosserial-vex-v5";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_vex_v5/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "4f28ad67afe3ee95fc74913159fcf5c1121049490b7ab7cb95721ccd04122c80";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-python rosserial-client rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for the VEX Cortex V5 Robot Brain platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
