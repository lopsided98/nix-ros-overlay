
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, rosgraph, tf, pythonPackages, catkin, rostopic, gazebo-msgs, visualization-msgs, roscpp, topic-tools, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-assistants";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_assistants/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "3f82b560d43b9d371d23bc2b9a6d8b1ea61b674d6578653c4b96df897f8e88f2";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs tf roscpp topic-tools nav-msgs ];
  propagatedBuildInputs = [ pythonPackages.numpy sensor-msgs geometry-msgs rosgraph tf rostopic gazebo-msgs visualization-msgs roscpp topic-tools rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
