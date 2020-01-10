
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen-conversions, geometry-msgs, kdl-parser, message-runtime, moveit-core, moveit-msgs, moveit-ros-planning, pluginlib, roscpp, std-msgs, tf, tf-conversions, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-exotica-core";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "c5f91ca156ad37a8357e9b650c39fab45ea4327bf1a4a645f1bdc2bcde2e59fc";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs kdl-parser message-runtime moveit-core moveit-msgs moveit-ros-planning pluginlib roscpp std-msgs tf tf-conversions tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
