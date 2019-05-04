
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, sensor-msgs, catkin, pythonPackages, nav-msgs, rosgraph, rostopic, visualization-msgs, rospy, topic-tools, roscpp, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-assistants";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_assistants/0.6.10-0.tar.gz;
    sha256 = "e2050e47d8efaa1003d68a19a329400e064186f5cf8b1c23a93d32e5a340a74e";
  };

  buildInputs = [ tf sensor-msgs nav-msgs topic-tools roscpp geometry-msgs ];
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs sensor-msgs roscpp nav-msgs rosgraph rostopic visualization-msgs rospy topic-tools tf gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
