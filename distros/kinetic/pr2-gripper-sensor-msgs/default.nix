
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gripper-sensor-msgs";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/pr2_gripper_sensor_msgs/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "11008c7ca1ab4e2800dec377245b373e2f0f2b119d29a4e7df60fd53292e058b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_msgs package contains various actions and messages that are used in the pr2_gripper_sensor* packages. The structure of the API used by pr2_gripper_sensor_action, and pr2_gripper_sensor_controller packages is as follows: 

Users will send a goal to an Action in the message format of PR2Gripper*Command (where * replaces the name of the particular Action from pr2_gripper_sensor_action). Feedback and Result information for the action is then returned in the format of PR2Gripper*Data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
