
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, actionlib-msgs, geometry-msgs, cob-moveit-interface, catkin, roscpp, rospy, message-generation, geometric-shapes, message-runtime, actionlib, std-msgs, moveit-msgs, tf, moveit-ros-planning-interface, cob-grasp-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-pick-place-action";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_pick_place_action/0.7.2-1.tar.gz;
    sha256 = "c946bdbb9b3fea26d7f47be23eaae5ae24b5f9204605787ebae9f76f51d77058";
  };

  buildInputs = [ moveit-ros-move-group actionlib-msgs geometry-msgs cob-moveit-interface roscpp message-generation geometric-shapes actionlib std-msgs moveit-msgs tf moveit-ros-planning-interface cob-grasp-generation ];
  propagatedBuildInputs = [ moveit-ros-move-group actionlib-msgs geometry-msgs cob-moveit-interface roscpp rospy geometric-shapes message-runtime actionlib std-msgs moveit-msgs tf moveit-ros-planning-interface cob-grasp-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An action interface to MoveIt!'s pick-and-place for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
