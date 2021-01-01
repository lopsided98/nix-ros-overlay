
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-controllers }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-tutorials";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_tutorials/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "d7b4c362532f2e315ad10d338ec2881476fbf33122e59e31c22eb521842e9afe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example configuration and launch file for dynamixel_motor stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
