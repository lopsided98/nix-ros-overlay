
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, controller-manager, gazebo-msgs, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-state-publisher, position-controllers, robot-state-publisher, roslaunch, rospy, rostest, std-msgs, tf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-worlds";
  version = "0.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_gazebo_worlds/0.7.5-2.tar.gz";
    name = "0.7.5-2.tar.gz";
    sha256 = "200a22d3573d5e4b172e1f1ebc5a45a982a2c558d7574bbe11efca62222ac357";
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
