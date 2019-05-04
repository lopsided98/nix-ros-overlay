
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-pg70-support, catkin }:
buildRosPackage {
  pname = "ros-kinetic-prbt-grippers";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_grippers/0.0.3-0.tar.gz;
    sha256 = "bc031a33bcf996c346521f9b15babe1cb83545ade84d93972d4d178005a5ccae";
  };

  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
