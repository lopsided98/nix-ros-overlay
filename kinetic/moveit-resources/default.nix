
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-moveit-resources";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_resources-release/archive/release/kinetic/moveit_resources/0.6.4-0.tar.gz;
    sha256 = "d8792f991f74dd06a2aa700eee464c1d7a560547e15523c0e0d20de700cd85f7";
  };

  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
