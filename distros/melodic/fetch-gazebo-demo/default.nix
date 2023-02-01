
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, fetch-gazebo, fetch-moveit-config, fetch-navigation, moveit-commander, moveit-python, simple-grasping, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo-demo";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_gazebo-release";
        rev = "release/melodic/fetch_gazebo_demo/0.9.2-1";
        sha256 = "sha256-Dtr618grubtY9ceXwj14DkMroDjbC0wtg8BKoDYH06k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib fetch-gazebo fetch-moveit-config fetch-navigation moveit-commander moveit-python simple-grasping teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for fetch_gazebo package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
