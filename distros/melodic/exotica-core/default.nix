
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cppzmq, eigen-conversions, geometry-msgs, kdl-parser, moveit-core, moveit-msgs, moveit-ros-planning, msgpack, pluginlib, roscpp, rosunit, std-msgs, tf, tf-conversions, tinyxml-2, zeromq }:
buildRosPackage {
  pname = "ros-melodic-exotica-core";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "5960220f06734e58b4299790facba37df5aedf03ddb8ea53d62805b62f25380e";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules cppzmq ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs kdl-parser moveit-core moveit-msgs moveit-ros-planning msgpack pluginlib roscpp std-msgs tf tf-conversions tinyxml-2 zeromq ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
