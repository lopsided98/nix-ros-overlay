
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb2400-support, catkin, controller-manager, fake-joint-driver, pr2-description, robot-state-publisher, roslaunch, rostest, rviz }:
buildRosPackage {
  pname = "ros-melodic-fake-joint-launch";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/fake_joint-release/archive/release/melodic/fake_joint_launch/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "f15ae2e5630c3ef5ce5ca60149d8719fef5f75303d6dd03967461f3db3e3b4e0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ abb-irb2400-support controller-manager fake-joint-driver pr2-description robot-state-publisher roslaunch rostest rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of the launch files for fake_joint_driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
