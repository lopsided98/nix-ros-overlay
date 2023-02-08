
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, joint-trajectory-controller, pluginlib, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-scaled-joint-trajectory-controller";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UniversalRobots";
        repo = "Universal_Robots_ROS_scaled_controllers-release";
        rev = "release/melodic/scaled_joint_trajectory_controller/0.1.0-1";
        sha256 = "sha256-YnCM6WrVoaKXHEQeg4iorgy5G+NPAFzOSIiUXPFZbvM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface joint-trajectory-controller pluginlib realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides controllers that use the speed scaling interface.'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
