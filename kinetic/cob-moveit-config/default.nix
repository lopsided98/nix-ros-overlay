
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-moveit-config";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_moveit_config/0.6.10-0.tar.gz;
    sha256 = "126042072ca10509e15850ac7bb970a792c9685fe35566bf1f77fedb41e04e2e";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    #license = lib.licenses.Apache 2.0;
  };
}
