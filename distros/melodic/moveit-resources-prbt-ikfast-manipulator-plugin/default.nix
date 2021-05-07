
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_prbt_ikfast_manipulator_plugin/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "84e7a9be6e81953ad3b003e2d4bde971bc0e4345c46dc89497c17713a193d4df";
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
