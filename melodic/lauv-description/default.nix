
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-gazebo-ros-plugins, robot-state-publisher, uuv-descriptions, uuv-assistants, catkin, rosunit, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-melodic-lauv-description";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/melodic/lauv_description/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "a3cd50cb68d4034daf6aa283fee53329c9e70c3177c0fe1bfdd169a236e4ab5c";
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
