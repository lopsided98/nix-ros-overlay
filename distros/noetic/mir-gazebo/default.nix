
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, fake-localization, gazebo-ros, joint-state-publisher, mir-description, mir-driver, robot-localization, robot-state-publisher, roslaunch, rostopic, rqt-robot-steering, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mir-gazebo";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_gazebo/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "28147f81a2dc949a45f83002a59c1b55ad8083f0bc9d32b63f68e034ba370cac";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ controller-manager fake-localization gazebo-ros joint-state-publisher mir-description mir-driver robot-localization robot-state-publisher rostopic rqt-robot-steering topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
