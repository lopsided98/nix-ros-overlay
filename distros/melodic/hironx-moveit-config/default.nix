
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf, hironx-ros-bridge, moveit-planners, moveit-ros, moveit-ros-move-group, moveit-simple-controller-manager, rostest }:
buildRosPackage {
  pname = "ros-melodic-hironx-moveit-config";
  version = "2.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_hironx-release";
        rev = "release/melodic/hironx_moveit_config/2.2.0-1";
        sha256 = "sha256-KuqqmllptppX8YewbjR+b6nX9JYjorKTi10mioalWD8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin collada-urdf moveit-ros-move-group ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hironx-ros-bridge moveit-planners moveit-ros moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the HiroNX with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
