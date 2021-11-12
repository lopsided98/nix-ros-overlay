
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_prbt_ikfast_manipulator_plugin/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "74508ac6108455bd769405fe25761edc983c878f4e550e98722fed5f5f5d1f2c";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen ];
  propagatedBuildInputs = [ eigen-conversions moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
