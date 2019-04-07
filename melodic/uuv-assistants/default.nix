
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, sensor-msgs, catkin, pythonPackages, roscpp, nav-msgs, rosgraph, rostopic, visualization-msgs, rospy, topic-tools, tf, gazebo-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-assistants";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_assistants/0.6.10-0.tar.gz;
    sha256 = "a1fca8150c90ca1a8b4c3960e38ee39acfbb5d99b4689d8cc6dd1b29d6804c7d";
  };

  buildInputs = [ nav-msgs topic-tools sensor-msgs roscpp geometry-msgs tf ];
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs sensor-msgs roscpp nav-msgs rosgraph rostopic visualization-msgs rospy topic-tools tf gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    #license = lib.licenses.Apache-2.0;
  };
}
