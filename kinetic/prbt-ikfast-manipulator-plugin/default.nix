
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, tf2-kdl, liblapack, rostest, moveit-core, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-prbt-ikfast-manipulator-plugin";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_ikfast_manipulator_plugin/0.4.7-0.tar.gz;
    sha256 = "85a2d98331891ab4de6c6a38cdba1fe4d41d344dfe0c4fdc25f066ef375cc523";
  };

  buildInputs = [ liblapack moveit-core pluginlib roscpp tf2-kdl ];
  checkInputs = [ rostest code-coverage rosunit ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    #license = lib.licenses.Apache 2.0;
  };
}
