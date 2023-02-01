
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-moveit-config, joint-state-publisher, moveit-planners, moveit-ros, moveit-ros-move-group, moveit-ros-planning-interface, moveit-ros-visualization, moveit-simple-controller-manager, nextage-ros-bridge, robot-state-publisher, rostest, trac-ik-kinematics-plugin }:
buildRosPackage {
  pname = "ros-melodic-nextage-moveit-config";
  version = "0.8.6-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_nextage-release";
        rev = "release/melodic/nextage_moveit_config/0.8.6-3";
        sha256 = "sha256-T+yz7UBjk0q5yt+1rxMEIo0D6G3Y+EFmBjImRAvBZoo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ joint-state-publisher robot-state-publisher rostest ];
  propagatedBuildInputs = [ hironx-moveit-config moveit-planners moveit-ros moveit-ros-move-group moveit-ros-planning-interface moveit-ros-visualization moveit-simple-controller-manager nextage-ros-bridge trac-ik-kinematics-plugin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the NextageOpen with the MoveIt Motion Planning Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
