
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-pg70-support, catkin }:
buildRosPackage {
  pname = "ros-melodic-prbt-grippers";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_grippers/0.0.1-0.tar.gz;
    sha256 = "9fa5eb2334d8d788cfa9d111db851ee031c92afea5367ba347999641885aac5c";
  };

  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
