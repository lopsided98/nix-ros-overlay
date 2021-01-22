
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, controller-manager, gazebo-msgs, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-state-publisher, position-controllers, robot-state-publisher, roslaunch, rospy, rostest, std-msgs, tf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-worlds";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_worlds/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "270ee226a2749623bef6b433ff8557835da31482d8c88ee4a54752f066db7575";
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
