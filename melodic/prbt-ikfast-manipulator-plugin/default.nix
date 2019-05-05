
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, tf2-kdl, liblapack, rostest, moveit-core, code-coverage, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-prbt-ikfast-manipulator-plugin";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_ikfast_manipulator_plugin/0.5.3-1.tar.gz;
    sha256 = "def4ff61fb9b4e80534735517fdada554eb01572558047e6b7c840f923c77766";
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
