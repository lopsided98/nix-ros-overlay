
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, controller-manager, robot-state-publisher, std-msgs, cob-default-env-config, position-controllers, tf, catkin, velocity-controllers, gazebo-msgs, gazebo-ros-control, gazebo-ros, rospy, roslaunch, rostest, joint-state-controller }:
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
  checkInputs = [ cob-default-env-config rostest ];
  propagatedBuildInputs = [ joint-state-publisher xacro controller-manager robot-state-publisher std-msgs position-controllers cob-default-env-config tf gazebo-msgs gazebo-ros-control gazebo-ros rospy roslaunch joint-state-controller velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some worlds for gazebo simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
