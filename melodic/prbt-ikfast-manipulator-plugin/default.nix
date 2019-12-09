
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, eigen-conversions, pluginlib, code-coverage, catkin, roscpp, rosunit, tf2-eigen, moveit-ros-planning, tf2-kdl, rostest }:
buildRosPackage {
  pname = "ros-melodic-prbt-ikfast-manipulator-plugin";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_ikfast_manipulator_plugin/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "d978a30e0d5a3bb3ca8e2f7e251085bb0ff37cc97fb3f5a7bd031605ed50b1c7";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core eigen-conversions pluginlib tf2-eigen roscpp tf2-kdl ];
  checkInputs = [ rosunit code-coverage rostest moveit-ros-planning ];
  propagatedBuildInputs = [ moveit-core eigen-conversions pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
