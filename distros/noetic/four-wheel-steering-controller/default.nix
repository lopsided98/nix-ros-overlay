
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rosgraph-msgs, rostest, std-msgs, std-srvs, tf, urdf-geometry-parser, xacro }:
buildRosPackage {
  pname = "ros-noetic-four-wheel-steering-controller";
  version = "0.21.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_controllers-release";
        rev = "release/noetic/four_wheel_steering_controller/0.21.1-1";
        sha256 = "sha256-1kTA6mxRNwjF5lfv1FIAaiTSi9+nJhGod2YXPdpcUzg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib urdf-geometry-parser ];
  checkInputs = [ controller-manager geometry-msgs rosgraph-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface four-wheel-steering-msgs hardware-interface nav-msgs realtime-tools roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
