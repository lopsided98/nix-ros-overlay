
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control, robot-state-publisher, rostest, rosunit, uuv-assistants, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, xacro }:
buildRosPackage {
  pname = "ros-kinetic-uuv-descriptions";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_descriptions/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "9033cbc9d5752c9bb4f0c75451fe1fefb0b7f6a2654009e17fb477e3f9a8ccf6";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control robot-state-publisher uuv-assistants uuv-gazebo-ros-plugins uuv-sensor-ros-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
