
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, tf2-kdl, liblapack, rostest, moveit-core, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-prbt-ikfast-manipulator-plugin";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_ikfast_manipulator_plugin/0.4.8-0.tar.gz;
    sha256 = "7ad059b91f7998af5aeac7cc484ec24836bbea4f92e53cf45d65ad4a5f6ef4f7";
  };

  buildInputs = [ pluginlib tf2-kdl liblapack moveit-core roscpp ];
  checkInputs = [ rostest code-coverage rosunit ];
  propagatedBuildInputs = [ pluginlib tf2-kdl liblapack moveit-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
