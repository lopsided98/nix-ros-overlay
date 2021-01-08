
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb2400-support, catkin, controller-manager, denso-ros-control, fake-joint-driver, nextage-description, pr2-description, robot-state-publisher, roslaunch, rostest, rviz, tra1-description, ur-description, vs060 }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3c7f30a7201c2463f705eb8f0d3fc815d49ebf3cc839c8b68b28f86ee6fd0ee1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ abb-irb2400-support controller-manager denso-ros-control fake-joint-driver nextage-description pr2-description robot-state-publisher roslaunch rostest rviz tra1-description ur-description vs060 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for fake_joint_driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
