
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, fake-localization, gazebo-ros, joint-state-publisher, mir-description, mir-driver, robot-localization, robot-state-publisher, roslaunch, rostopic, rqt-robot-steering, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-mir-gazebo";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_gazebo/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "a2b89bd005d1d5ac797b4ee8a77cf326e8812f31d6baac58fa1358718708287f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager fake-localization gazebo-ros joint-state-publisher mir-description mir-driver robot-localization robot-state-publisher rostopic rqt-robot-steering topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation specific launch and configuration files for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
