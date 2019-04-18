
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-pg70-support, catkin }:
buildRosPackage {
  pname = "ros-melodic-prbt-grippers";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_grippers/0.0.2-0.tar.gz;
    sha256 = "49a1079006c4814d2f82525a088bb46c449637d9454d5e15818d2a2194280cbb";
  };

  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
