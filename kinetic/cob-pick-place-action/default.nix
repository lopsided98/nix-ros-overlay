
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, message-runtime, moveit-ros-move-group, moveit-ros-planning-interface, std-msgs, tf, catkin, actionlib, actionlib-msgs, geometric-shapes, roscpp, moveit-msgs, rospy, cob-grasp-generation, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-kinetic-cob-pick-place-action";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_pick_place_action/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "c946bdbb9b3fea26d7f47be23eaae5ae24b5f9204605787ebae9f76f51d77058";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs moveit-ros-move-group std-msgs moveit-ros-planning-interface actionlib tf actionlib-msgs geometric-shapes roscpp moveit-msgs message-generation cob-grasp-generation cob-moveit-interface ];
  propagatedBuildInputs = [ geometry-msgs message-runtime moveit-ros-move-group std-msgs moveit-ros-planning-interface tf actionlib actionlib-msgs geometric-shapes roscpp moveit-msgs rospy cob-grasp-generation cob-moveit-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An action interface to MoveIt!'s pick-and-place for Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
