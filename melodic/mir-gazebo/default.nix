
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, mir-description, fake-localization, robot-localization, mir-driver, rostopic, robot-state-publisher, rqt-robot-steering, topic-tools, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-mir-gazebo";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_gazebo/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "433d7b8eb2aa43766ee2147af39d967f7a7ef8df494fbde42eb423af0b3a4fdd";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager mir-description fake-localization robot-localization mir-driver rostopic robot-state-publisher rqt-robot-steering topic-tools joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
