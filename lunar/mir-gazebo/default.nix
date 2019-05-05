
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, mir-description, fake-localization, robot-localization, mir-driver, rostopic, robot-state-publisher, rqt-robot-steering, topic-tools, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-lunar-mir-gazebo";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_gazebo/1.0.3-0.tar.gz;
    sha256 = "5b8df6cee5824ea0b3ae1a0876dec088587a22c78ba32a558303e58217a8eccf";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager mir-description fake-localization robot-localization mir-driver rostopic robot-state-publisher rqt-robot-steering topic-tools joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
