
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, gazebo-ros-control, joint-state-controller, catkin, velocity-controllers, cob-default-env-config, rostest, position-controllers, robot-state-publisher, rospy, std-msgs, roslaunch, tf, joint-state-publisher, xacro, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-worlds";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_worlds/0.6.10-0.tar.gz;
    sha256 = "5671f666d7dde6a14417fbb3f5fd8a5a9c4ced4c766e0a59787e2eea4c3292cd";
  };

  buildInputs = [ roslaunch ];
  checkInputs = [ rostest cob-default-env-config ];
  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller gazebo-msgs velocity-controllers cob-default-env-config position-controllers robot-state-publisher rospy std-msgs roslaunch tf joint-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some worlds for gazebo simulation.'';
    #license = lib.licenses.Apache 2.0;
  };
}
