
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, liblapack, moveit-core, pluginlib, roscpp, rostest, rosunit, tf2-kdl }:
buildRosPackage {
  pname = "ros-kinetic-prbt-ikfast-manipulator-plugin";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_ikfast_manipulator_plugin/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "1e752c74ccf8f12b23bdc8635cfa2466c2314b37ed7f443757bc3ac19c97bc94";
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
