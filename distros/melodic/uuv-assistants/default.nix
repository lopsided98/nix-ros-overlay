
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, nav-msgs, pythonPackages, roscpp, rosgraph, rospy, rostopic, sensor-msgs, tf, topic-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-assistants";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_assistants/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "3f82b560d43b9d371d23bc2b9a6d8b1ea61b674d6578653c4b96df897f8e88f2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs nav-msgs pythonPackages.numpy roscpp rosgraph rospy rostopic sensor-msgs tf topic-tools visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
