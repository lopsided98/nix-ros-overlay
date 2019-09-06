
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, pr2-description, ur-description, catkin, vs060, denso-ros-control, rostest, rviz, tra1-description, robot-state-publisher, nextage-description, roslaunch, abb-irb2400-support, fake-joint-driver }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3c7f30a7201c2463f705eb8f0d3fc815d49ebf3cc839c8b68b28f86ee6fd0ee1";
  };

  buildType = "catkin";
  buildInputs = [ rostest roslaunch fake-joint-driver ];
  propagatedBuildInputs = [ controller-manager pr2-description ur-description vs060 denso-ros-control rostest rviz tra1-description robot-state-publisher nextage-description roslaunch abb-irb2400-support fake-joint-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for fake_joint_driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
