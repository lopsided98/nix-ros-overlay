
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, catkin, rostest, robot-state-publisher, rosunit, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-uuv-descriptions";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_descriptions/0.6.10-0.tar.gz;
    sha256 = "6966a2c2e02f32e5b5ed75c845a8e6789f5e0775070a1cdf773e7d245ded2db6";
  };

  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins robot-state-publisher uuv-assistants gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    #license = lib.licenses.Apache-2.0;
  };
}
