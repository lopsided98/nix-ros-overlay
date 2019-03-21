
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, mir-description, fake-localization, robot-localization, mir-driver, rostopic, robot-state-publisher, rqt-robot-steering, topic-tools, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-mir-gazebo";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_gazebo/1.0.3-0.tar.gz;
    sha256 = "02b1fbc0cc04cd788cfe9ba652a6f5ebd34e34bf12eb00e50e03c413bc4fa606";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager topic-tools mir-description robot-localization mir-driver rostopic robot-state-publisher rqt-robot-steering fake-localization joint-state-publisher ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    #license = lib.licenses.BSD;
  };
}
