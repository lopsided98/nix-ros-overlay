
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, catkin, controller-manager, denso-robot-core, hardware-interface, joint-limits-interface, roscpp, std-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-control";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DENSORobot";
        repo = "denso_robot_ros-release";
        rev = "release/melodic/denso_robot_control/3.2.0-1";
        sha256 = "sha256-4qcPbPhGwXitzrND74gKJLcwtaeS++8yYfaCy1To404=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bcap-core bcap-service controller-manager denso-robot-core hardware-interface joint-limits-interface roscpp std-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot control package includes a node for controlling DENSO robot controllers with MoveIt!.'';
    license = with lib.licenses; [ mit ];
  };
}
