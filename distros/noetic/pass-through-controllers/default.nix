
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, cartesian-control-msgs, cartesian-interface, cartesian-trajectory-controller, catkin, control-msgs, controller-interface, controller-manager, controller-manager-msgs, dynamic-reconfigure, geometry-msgs, hardware-interface, roscpp, rostest, speed-scaling-interface, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-pass-through-controllers";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UniversalRobots";
        repo = "Universal_Robots_ROS_passthrough_controllers-release";
        rev = "release/noetic/pass_through_controllers/0.1.0-1";
        sha256 = "sha256-tTHapYRYN6T2c2/Ov7vNJOd10vjNRtfem1jjRImZWq4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ actionlib actionlib-msgs cartesian-trajectory-controller control-msgs controller-manager-msgs rostest xacro ];
  propagatedBuildInputs = [ actionlib cartesian-control-msgs cartesian-interface controller-interface controller-manager dynamic-reconfigure geometry-msgs hardware-interface roscpp speed-scaling-interface trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory controllers (joint-based and Cartesian) that forward trajectories
    directly to a robot controller and let it handle trajectory interpolation and execution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
