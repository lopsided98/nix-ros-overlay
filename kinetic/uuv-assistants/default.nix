
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, sensor-msgs, catkin, pythonPackages, roscpp, nav-msgs, rosgraph, rostopic, visualization-msgs, rospy, topic-tools, tf, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-assistants";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_assistants/0.6.10-0.tar.gz;
    sha256 = "e2050e47d8efaa1003d68a19a329400e064186f5cf8b1c23a93d32e5a340a74e";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs sensor-msgs roscpp nav-msgs rosgraph rostopic visualization-msgs rospy topic-tools tf gazebo-msgs ];
  nativeBuildInputs = [ nav-msgs catkin topic-tools sensor-msgs roscpp geometry-msgs tf ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    #license = lib.licenses.Apache-2.0;
  };
}
