
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, sensor-msgs, catkin, pythonPackages, nav-msgs, rosgraph, rostopic, visualization-msgs, rospy, topic-tools, roscpp, gazebo-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-assistants";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_assistants/0.6.12-0.tar.gz;
    sha256 = "2d65ceafec21251a178fdd2f7dee92458d0c6f86bd7ffd31b70ff7f7b396b2d8";
  };

  buildInputs = [ tf sensor-msgs nav-msgs topic-tools roscpp geometry-msgs ];
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs sensor-msgs roscpp nav-msgs rosgraph rostopic visualization-msgs rospy topic-tools tf gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
