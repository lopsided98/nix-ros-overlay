
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-gripper-sensor-msgs";
  version = "1.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_gripper_sensor-release";
        rev = "release/melodic/pr2_gripper_sensor_msgs/1.0.11-1";
        sha256 = "sha256-9Z4tCrT/gqRZv5YwXn7ckLmR1pgqgBgITDtrlNdnL9Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor_msgs package contains various actions and messages that are used in the pr2_gripper_sensor* packages. The structure of the API used by pr2_gripper_sensor_action, and pr2_gripper_sensor_controller packages is as follows: 

Users will send a goal to an Action in the message format of PR2Gripper*Command (where * replaces the name of the particular Action from pr2_gripper_sensor_action). Feedback and Result information for the action is then returned in the format of PR2Gripper*Data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
