
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, controller-manager, gazebo-msgs, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-state-publisher, position-controllers, robot-state-publisher, roslaunch, rospy, rostest, std-msgs, tf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-worlds";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/melodic/cob_gazebo_worlds/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "e73c726f58e47d75d86ead72845c4a1bbdeb0519c4247cc8ec75c2330efa99c0";
  };

  buildType = "catkin";
  checkInputs = [ cob-default-env-config roslaunch rostest ];
  propagatedBuildInputs = [ cob-default-env-config controller-manager gazebo-msgs gazebo-ros gazebo-ros-control joint-state-controller joint-state-publisher position-controllers robot-state-publisher rospy std-msgs tf velocity-controllers xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some worlds for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
