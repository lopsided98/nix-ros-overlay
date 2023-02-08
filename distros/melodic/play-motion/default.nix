
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, controller-manager, controller-manager-msgs, diagnostic-msgs, diagnostic-updater, hardware-interface, joint-state-controller, joint-trajectory-controller, moveit-ros-planning-interface, play-motion-msgs, position-controllers, robot-state-publisher, roscpp, rostest, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-play-motion";
  version = "0.4.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "play_motion-release2";
        rev = "release/melodic/play_motion/0.4.8-1";
        sha256 = "sha256-4/ACaqXD+i1NjMQNV9c/s8w+KpD6audHA7Wd8iNBNOU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager hardware-interface joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher rostest xacro ];
  propagatedBuildInputs = [ actionlib control-msgs controller-manager-msgs diagnostic-msgs diagnostic-updater moveit-ros-planning-interface play-motion-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays a pre-recorded motion on a robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
