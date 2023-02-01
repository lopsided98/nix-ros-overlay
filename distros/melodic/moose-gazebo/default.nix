
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, moose-control, moose-description, robot-localization, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-moose-gazebo";
  version = "0.1.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "moose_simulator-release";
        rev = "release/melodic/moose_gazebo/0.1.3-1";
        sha256 = "sha256-rwxalOjXIqFdyYcr5WNTkXPe6kQLNamCJ3i+FeIAyXQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins joint-state-publisher moose-control moose-description robot-localization robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to use Moose in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
