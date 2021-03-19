
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cppzmq, eigen-conversions, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, moveit-ros-planning, msgpack, orocos-kdl, pluginlib, roscpp, rosunit, std-msgs, tf, tf-conversions, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-exotica-core";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_core/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "77a04ddae79ad2a08d66cc6282c7638cddb163eb2945e1e34f148a64c1bf0668";
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
