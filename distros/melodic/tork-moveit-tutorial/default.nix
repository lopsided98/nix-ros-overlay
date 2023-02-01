
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, moveit-commander, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-visualization, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-tork-moveit-tutorial";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "tork_moveit_tutorial-release";
        rev = "release/melodic/tork_moveit_tutorial/0.1.1-1";
        sha256 = "sha256-VuK7H8hRe6l7w5M5eOhuN2OD6P652pEkyrkhQSAJsZs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros moveit-commander moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-visualization moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tork_moveit_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
