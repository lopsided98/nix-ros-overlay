
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, tf2-kdl, liblapack, rostest, moveit-core, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-ikfast-manipulator-plugin";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_ikfast_manipulator_plugin/0.5.2-0.tar.gz;
    sha256 = "7af5fbac9ef84b4c58661c8cc505beff584aa585b6732a4f43c0bf785ef8b89f";
  };

  checkInputs = [ rostest code-coverage rosunit ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ liblapack moveit-core pluginlib catkin roscpp tf2-kdl ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    #license = lib.licenses.Apache 2.0;
  };
}
