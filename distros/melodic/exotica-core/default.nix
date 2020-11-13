
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cppzmq, eigen-conversions, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, moveit-ros-planning, msgpack, orocos-kdl, pluginlib, roscpp, rosunit, std-msgs, tf, tf-conversions, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-exotica-core";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "23ab85adf28c31786e34e5354300bdcdff0370ccc3574724f5419473fefbc00e";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cppzmq eigen-conversions geometry-msgs kdl-parser moveit-core moveit-msgs moveit-ros-planning msgpack orocos-kdl pluginlib roscpp std-msgs tf tf-conversions tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
