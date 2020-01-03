
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, liblapack, moveit-core, pluginlib, roscpp, rostest, rosunit, tf2-kdl }:
buildRosPackage {
  pname = "ros-kinetic-prbt-ikfast-manipulator-plugin";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_ikfast_manipulator_plugin/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "c6a68bc930cf6828294b9a23444fc3378e9d458e4bfed71acc64962aee2d0bd4";
  };

  buildType = "catkin";
  checkInputs = [ code-coverage rostest rosunit ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
