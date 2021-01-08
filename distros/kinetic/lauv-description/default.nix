
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, robot-state-publisher, rostest, rosunit, uuv-assistants, uuv-descriptions, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-lauv-description";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/lauv_description/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "291ed38c201fd6238354ca7f3b14f0c22718712c7baeb020d1bc13d6e993f476";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros robot-state-publisher uuv-assistants uuv-descriptions uuv-gazebo-ros-plugins uuv-sensor-ros-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description files for the LAUV.'';
    license = with lib.licenses; [ asl20 ];
  };
}
