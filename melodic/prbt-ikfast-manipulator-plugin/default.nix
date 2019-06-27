
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, tf2-kdl, liblapack, rostest, moveit-core, tf2-eigen, code-coverage, eigen-conversions, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-ikfast-manipulator-plugin";
  version = "0.5.6-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_ikfast_manipulator_plugin/0.5.6-1.tar.gz;
    sha256 = "5454effca64250fafc0bd2cbdc147e6b848d3f6aadff1f9a271646856561ea19";
  };

  buildInputs = [ pluginlib tf2-kdl liblapack moveit-core tf2-eigen eigen-conversions roscpp ];
  checkInputs = [ moveit-ros-planning rostest code-coverage rosunit ];
  propagatedBuildInputs = [ pluginlib tf2-kdl liblapack moveit-core eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
