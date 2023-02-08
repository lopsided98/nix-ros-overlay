
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, controller-manager-msgs, diff-drive-controller, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, std-msgs, std-srvs, tf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-noetic-ackermann-steering-controller";
  version = "0.21.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_controllers-release";
        rev = "release/noetic/ackermann_steering_controller/0.21.1-1";
        sha256 = "sha256-TpG2P7Xv+ocuSQoG278KjbAK7s3OqGkUbGV43WJTkU8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager controller-manager-msgs geometry-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
