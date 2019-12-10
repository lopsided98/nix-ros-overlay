
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, cob-grasp-generation, cob-moveit-interface, geometric-shapes, geometry-msgs, message-generation, message-runtime, moveit-msgs, moveit-ros-move-group, moveit-ros-planning-interface, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-pick-place-action";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_pick_place_action/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "c946bdbb9b3fea26d7f47be23eaae5ae24b5f9204605787ebae9f76f51d77058";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs cob-grasp-generation cob-moveit-interface geometric-shapes geometry-msgs message-runtime moveit-msgs moveit-ros-move-group moveit-ros-planning-interface roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An action interface to MoveIt!'s pick-and-place for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
