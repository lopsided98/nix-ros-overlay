
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-gazebo-ros-plugins, robot-state-publisher, uuv-descriptions, uuv-assistants, catkin, rosunit, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-kinetic-lauv-description";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/lauv_description/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "291ed38c201fd6238354ca7f3b14f0c22718712c7baeb020d1bc13d6e993f476";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ xacro uuv-sensor-ros-plugins uuv-descriptions robot-state-publisher uuv-gazebo-ros-plugins uuv-assistants gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description files for the LAUV.'';
    license = with lib.licenses; [ asl20 ];
  };
}
