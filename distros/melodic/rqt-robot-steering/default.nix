
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, pythonPackages, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-robot-steering";
  version = "0.5.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_robot_steering-release";
        rev = "release/melodic/rqt_robot_steering/0.5.10-1";
        sha256 = "sha256-iq4Gb75FFNimmJbvjJcbo3mdwsvGrUcJjUk6lX6K2YE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding pythonPackages.rospkg rostopic rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
