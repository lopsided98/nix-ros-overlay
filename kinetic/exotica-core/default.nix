
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, geometry-msgs, eigen-conversions, pluginlib, std-msgs, tf, cmake-modules, catkin, moveit-ros-planning, moveit-msgs, roscpp, tinyxml-2, message-runtime, tf-conversions, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "15d7411d8b64ca107e002fd726ac71522f2e1e8efb3e01e22d828998180317bc";
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
