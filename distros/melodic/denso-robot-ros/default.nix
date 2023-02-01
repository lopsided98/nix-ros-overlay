
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcap-core, bcap-service, bcap-service-test, catkin, denso-robot-bringup, denso-robot-control, denso-robot-core, denso-robot-core-test, denso-robot-descriptions, denso-robot-gazebo, denso-robot-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-denso-robot-ros";
  version = "3.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DENSORobot";
        repo = "denso_robot_ros-release";
        rev = "release/melodic/denso_robot_ros/3.2.0-1";
        sha256 = "sha256-RFVgNnVbkivy5EJkl2nafpkTNd5ZPdM4YNqQc6PZUT8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bcap-core bcap-service bcap-service-test denso-robot-bringup denso-robot-control denso-robot-core denso-robot-core-test denso-robot-descriptions denso-robot-gazebo denso-robot-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The denso robot ros stack constains libraries, configuration files, and ROS nodes for controlling a DENSO robot from ROS.'';
    license = with lib.licenses; [ mit ];
  };
}
