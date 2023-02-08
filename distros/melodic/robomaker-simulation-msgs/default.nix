
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-robomaker-simulation-msgs";
  version = "1.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "aws_robomaker_simulation_ros_pkgs-release";
        rev = "release/melodic/robomaker_simulation_msgs/1.1.1-2";
        sha256 = "sha256-o2IfM6mCs02fJrJyGZ4IUIxkb/JcLHgnCviwI6pP3zg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AWS RoboMaker package containing ROS service definitions for service endpoints provided inside of an AWS RoboMaker simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
