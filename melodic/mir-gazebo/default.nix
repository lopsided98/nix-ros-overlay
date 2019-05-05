
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, mir-description, fake-localization, robot-localization, mir-driver, rostopic, robot-state-publisher, rqt-robot-steering, topic-tools, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-mir-gazebo";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_gazebo/1.0.3-0.tar.gz;
    sha256 = "3e9fbfe4a30892fbde3192719aae286acba1c2f88b5238f5c72987e706d60c20";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager mir-description fake-localization robot-localization mir-driver rostopic robot-state-publisher rqt-robot-steering topic-tools joint-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
