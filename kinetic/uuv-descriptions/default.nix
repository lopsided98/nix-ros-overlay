
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-gazebo-ros-plugins, robot-state-publisher, uuv-assistants, catkin, rosunit, gazebo-ros-control, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-kinetic-uuv-descriptions";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_descriptions/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "9033cbc9d5752c9bb4f0c75451fe1fefb0b7f6a2654009e17fb477e3f9a8ccf6";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ xacro uuv-sensor-ros-plugins uuv-gazebo-ros-plugins robot-state-publisher uuv-assistants gazebo-ros-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
