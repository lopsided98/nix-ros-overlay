
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, kdl-parser, cmake-modules, pluginlib, catkin, roscpp, moveit-core, message-runtime, tf-conversions, std-msgs, moveit-msgs, eigen-conversions, tf, tinyxml-2, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-exotica-core";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core/5.0.0-0.tar.gz;
    sha256 = "c5f91ca156ad37a8357e9b650c39fab45ea4327bf1a4a645f1bdc2bcde2e59fc";
  };

  buildInputs = [ moveit-ros-planning kdl-parser pluginlib cmake-modules eigen-conversions roscpp moveit-core tf-conversions message-runtime std-msgs moveit-msgs tinyxml-2 tf geometry-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning kdl-parser pluginlib eigen-conversions roscpp moveit-core tf-conversions message-runtime std-msgs moveit-msgs tinyxml-2 tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning.'';
    #license = lib.licenses.BSD;
  };
}
