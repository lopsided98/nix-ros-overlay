
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, actionlib-msgs, geometry-msgs, cob-moveit-interface, catkin, roscpp, rospy, message-generation, geometric-shapes, message-runtime, actionlib, std-msgs, moveit-msgs, tf, moveit-ros-planning-interface, cob-grasp-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-pick-place-action";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_pick_place_action/0.7.1-0.tar.gz;
    sha256 = "b145c20dca497e46043c8b5212937039c36a497e47db71c7201b473547af7efa";
  };

  buildInputs = [ moveit-ros-move-group actionlib-msgs geometry-msgs cob-moveit-interface roscpp message-generation geometric-shapes actionlib std-msgs moveit-msgs tf moveit-ros-planning-interface cob-grasp-generation ];
  propagatedBuildInputs = [ moveit-ros-move-group actionlib-msgs geometry-msgs cob-moveit-interface roscpp rospy geometric-shapes message-runtime actionlib std-msgs moveit-msgs tf moveit-ros-planning-interface cob-grasp-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An action interface to MoveIt!'s pick-and-place for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
