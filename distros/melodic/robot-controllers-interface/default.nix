
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pluginlib, robot-controllers-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-robot-controllers-interface";
  version = "0.6.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "robot_controllers-release";
        rev = "release/melodic/robot_controllers_interface/0.6.0-0";
        sha256 = "sha256-dOR7btAmG3Y40avAVqBAaXwgHhZnJg9bke6nYwkXHNs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib pluginlib robot-controllers-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic framework for robot controls.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
