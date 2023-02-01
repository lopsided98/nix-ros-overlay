
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-service, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-bcap-service-test";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DENSORobot";
        repo = "denso_robot_ros-release";
        rev = "release/melodic/bcap_service_test/3.2.0-1";
        sha256 = "sha256-qI2GWnrnY0FMlBsSx6P93n3bUD/9V5WsZN6QXtXqsVM=";
      };

  buildType = "catkin";
  buildInputs = [ bcap-service catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcap service test package includes a node for testing bcap service node.'';
    license = with lib.licenses; [ mit ];
  };
}
