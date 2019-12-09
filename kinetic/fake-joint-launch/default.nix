
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, denso-ros-control, tra1-description, robot-state-publisher, controller-manager, pr2-description, catkin, vs060, fake-joint-driver, abb-irb2400-support, rviz, nextage-description, ur-description, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3c7f30a7201c2463f705eb8f0d3fc815d49ebf3cc839c8b68b28f86ee6fd0ee1";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch rostest fake-joint-driver ];
  propagatedBuildInputs = [ tra1-description pr2-description robot-state-publisher controller-manager denso-ros-control vs060 abb-irb2400-support fake-joint-driver rviz nextage-description ur-description roslaunch rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for fake_joint_driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
