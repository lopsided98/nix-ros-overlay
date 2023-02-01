
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-control, franka-description, franka-example-controllers, franka-gazebo, franka-gripper, franka-hw, franka-msgs, franka-visualization }:
buildRosPackage {
  pname = "ros-noetic-franka-ros";
  version = "0.10.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "frankaemika";
        repo = "franka_ros-release";
        rev = "release/noetic/franka_ros/0.10.1-1";
        sha256 = "sha256-s0tJdQWTFKOVc0iTFu4iNLBkczyooC+JgTM0YFm8Weo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ franka-control franka-description franka-example-controllers franka-gazebo franka-gripper franka-hw franka-msgs franka-visualization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
