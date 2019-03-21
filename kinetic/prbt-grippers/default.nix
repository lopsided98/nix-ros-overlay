
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-pg70-support, catkin }:
buildRosPackage {
  pname = "ros-kinetic-prbt-grippers";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/kinetic/prbt_grippers/0.0.2-0.tar.gz;
    sha256 = "62bae27f99fa9d993b50b04bab1209fe81400762d1dce87f340c837f06cad6ea";
  };

  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
