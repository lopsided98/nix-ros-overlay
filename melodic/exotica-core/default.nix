
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, geometry-msgs, eigen-conversions, pluginlib, std-msgs, tf, cmake-modules, catkin, moveit-ros-planning, moveit-msgs, roscpp, tinyxml-2, message-runtime, tf-conversions, kdl-parser }:
buildRosPackage {
  pname = "ros-melodic-exotica-core";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_core/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "c5f91ca156ad37a8357e9b650c39fab45ea4327bf1a4a645f1bdc2bcde2e59fc";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core geometry-msgs eigen-conversions pluginlib std-msgs tf cmake-modules moveit-ros-planning moveit-msgs roscpp tinyxml-2 message-runtime tf-conversions kdl-parser ];
  propagatedBuildInputs = [ moveit-core geometry-msgs eigen-conversions pluginlib std-msgs tf moveit-ros-planning moveit-msgs roscpp tinyxml-2 message-runtime tf-conversions kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Extensible Optimization Toolset (EXOTica) is a library for defining problems for robot motion planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
