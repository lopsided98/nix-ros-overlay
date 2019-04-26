
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit }:
buildRosPackage {
  pname = "ros-lunar-eca-a9-description";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/eca_a9-release/archive/release/lunar/eca_a9_description/0.1.6-0.tar.gz;
    sha256 = "038ce996c50c006dcb6f3df47db6d2a6342ec03d6e7f22ae72e44c36585dfc6a";
  };

  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-assistants uuv-gazebo-ros-plugins uuv-sensor-ros-plugins robot-state-publisher uuv-descriptions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description for the ECA A9 AUV'';
    #license = lib.licenses.Apache-2.0;
  };
}
