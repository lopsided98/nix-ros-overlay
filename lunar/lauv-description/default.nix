
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit }:
buildRosPackage {
  pname = "ros-lunar-lauv-description";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/lunar/lauv_description/0.1.6-0.tar.gz;
    sha256 = "96f67e644cb74e8694bb3c9e0b91202ea8b44d9d175a020a3e250902022f800f";
  };

  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-assistants uuv-gazebo-ros-plugins uuv-sensor-ros-plugins robot-state-publisher uuv-descriptions xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot description files for the LAUV.'';
    #license = lib.licenses.Apache-2.0;
  };
}
