
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-control, gazebo-ros-pkgs, joint-state-controller, joint-trajectory-controller }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-gazebo";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DENSORobot";
        repo = "denso_robot_ros-release";
        rev = "release/melodic/denso_robot_gazebo/3.2.0-1";
        sha256 = "sha256-3Uc+hjqGn7XtwvGhgWWTb5m/33dJg7VCo2ZJ8NGkwsM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros-control gazebo-ros-pkgs joint-state-controller joint-trajectory-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot gazebo package includes a launch file for simulating DENSO robot.'';
    license = with lib.licenses; [ mit ];
  };
}
