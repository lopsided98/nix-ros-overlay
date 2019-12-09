
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, rqt-robot-steering, controller-manager, robot-state-publisher, mir-driver, catkin, gazebo-ros, rostopic, robot-localization, fake-localization, mir-description, topic-tools, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-mir-gazebo";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_gazebo/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "21dc52888daa0604d1c537426a35df641c3eba536e88cd511a5db7df98a6aab8";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher rqt-robot-steering controller-manager robot-state-publisher mir-driver gazebo-ros rostopic robot-localization fake-localization mir-description topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
