
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, dynamic-reconfigure, eigen, eigen-conversions, franka-control, franka-description, franka-gripper, franka-hw, geometry-msgs, hardware-interface, joint-limits-interface, libfranka, message-generation, message-runtime, pluginlib, realtime-tools, roscpp, rospy, tf, tf-conversions, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-example-controllers";
  version = "0.10.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "frankaemika";
        repo = "franka_ros-release";
        rev = "release/melodic/franka_example_controllers/0.10.1-1";
        sha256 = "sha256-8p7Gw20DddL8YvDbOFecVs3VYEhU+2mALEOjNJY3pdA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin eigen message-generation ];
  propagatedBuildInputs = [ controller-interface dynamic-reconfigure eigen-conversions franka-control franka-description franka-gripper franka-hw geometry-msgs hardware-interface joint-limits-interface libfranka message-runtime pluginlib realtime-tools roscpp rospy tf tf-conversions urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_example_controllers provides example code for controlling Franka Emika research robots with ros_control'';
    license = with lib.licenses; [ asl20 ];
  };
}
