
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-lunar-rexrov2-description";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/lunar/rexrov2_description/0.1.3-0.tar.gz;
    sha256 = "8aa2fea5b5d86307c7339682bfc80db1e47611cc1a52939ccd5e85deddb02e52";
  };

  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-assistants uuv-gazebo-ros-plugins uuv-sensor-ros-plugins robot-state-publisher uuv-descriptions xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the RexROV 2 underwater vehicle'';
    #license = lib.licenses.Apache-2.0;
  };
}
