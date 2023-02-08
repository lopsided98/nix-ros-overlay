
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, industrial-msgs, industrial-robot-status-interface, pluginlib, realtime-tools }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-status-controller";
  version = "0.1.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gavanderhoorn";
        repo = "industrial_robot_status_controller-release";
        rev = "release/melodic/industrial_robot_status_controller/0.1.2-1";
        sha256 = "sha256-p022V+EEm9prUjYhRXN1E0niuxHHS6W0+aHw3/5q+Dg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin industrial-robot-status-interface ];
  propagatedBuildInputs = [ controller-interface hardware-interface industrial-msgs pluginlib realtime-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ros_control controller that reports robot status using the ROS-Industrial RobotStatus message.'';
    license = with lib.licenses; [ asl20 ];
  };
}
