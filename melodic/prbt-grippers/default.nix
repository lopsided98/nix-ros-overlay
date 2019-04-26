
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, prbt-pg70-support, catkin }:
buildRosPackage {
  pname = "ros-melodic-prbt-grippers";
  version = "0.0.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/prbt_grippers/0.0.3-1.tar.gz;
    sha256 = "f623ce025264f9a4407ee7687efc7dc058aaee1d80f1c81eeaa5e569c1c519dc";
  };

  propagatedBuildInputs = [ prbt-pg70-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package provides gripper support for the pilz_robots package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
