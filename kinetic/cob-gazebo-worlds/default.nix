
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, gazebo-ros-control, joint-state-controller, catkin, velocity-controllers, cob-default-env-config, rostest, position-controllers, robot-state-publisher, rospy, std-msgs, roslaunch, tf, joint-state-publisher, xacro, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-worlds";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_worlds/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "9d708c22d00565f53c01923617c6ade01d3373d79863e9bdf7670ca34e796f8f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  checkInputs = [ rostest cob-default-env-config ];
  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller gazebo-msgs velocity-controllers cob-default-env-config position-controllers robot-state-publisher rospy std-msgs roslaunch tf joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some worlds for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
