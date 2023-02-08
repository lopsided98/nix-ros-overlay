
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-config, cob-gazebo-ros-control, cob-hardware-config, cob-script-server, cob-supported-robots, control-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, roslaunch, rospy, rostest, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo";
  version = "0.7.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_simulation-release";
        rev = "release/noetic/cob_gazebo/0.7.7-1";
        sha256 = "sha256-MnwOTSskNK/yzyjTwgOdRXE7CbAptURl/3Wa+7YiX7E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-bringup cob-default-robot-config cob-gazebo-ros-control cob-hardware-config cob-script-server control-msgs gazebo-plugins gazebo-ros gazebo-ros-control rospy rostest trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and tools for 3D simulation of Care-O-bot in gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
