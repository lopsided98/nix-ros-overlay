
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cppzmq, eigen-conversions, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, moveit-ros-planning, msgpack, pluginlib, roscpp, rosunit, std-msgs, tf, tf-conversions, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-exotica-core";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "3df8d716a7d34a58746962a1c7229bce9455bebd0246de0e9a49be628d28303f";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ cppzmq eigen-conversions geometry-msgs kdl-parser moveit-core moveit-msgs moveit-ros-planning msgpack pluginlib roscpp std-msgs tf tf-conversions tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
