
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, tf2-kdl, liblapack, rostest, moveit-core, tf2-eigen, code-coverage, eigen-conversions, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-ikfast-manipulator-plugin";
  version = "0.5.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_ikfast_manipulator_plugin/0.5.10-1.tar.gz";
    name = "0.5.10-1.tar.gz";
    sha256 = "97b205262d1743f3ec62927de46035e6abdd6383fb20ad4cf9e0e3d8d5630aee";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib tf2-kdl liblapack moveit-core tf2-eigen eigen-conversions roscpp ];
  checkInputs = [ moveit-ros-planning rostest code-coverage rosunit ];
  propagatedBuildInputs = [ pluginlib tf2-kdl liblapack moveit-core eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
