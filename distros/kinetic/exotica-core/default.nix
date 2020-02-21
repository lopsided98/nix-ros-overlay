
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cppzmq, eigen-conversions, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, moveit-ros-planning, msgpack, pluginlib, roscpp, rosunit, std-msgs, tf, tf-conversions, tinyxml-2 }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "a93f1c3b11b39fefbe92c4817c7bc8463546359ebcde0ae8c5daf1b2c3a6147f";
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
