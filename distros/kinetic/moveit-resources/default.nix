
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-moveit-resources";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/kinetic/moveit_resources/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "331af4bef80688c6b9cb201ab3a6c1eab5cd345fa28ee3a7ba697ec643473222";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
