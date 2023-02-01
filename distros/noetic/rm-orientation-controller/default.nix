
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, forward-command-controller, pluginlib, rm-common, roscpp, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-orientation-controller";
  version = "0.1.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_controllers-release";
        rev = "release/noetic/rm_orientation_controller/0.1.7-1";
        sha256 = "sha256-z7w7B7LTxs3dJhAiuEMX2BAl/un979mJwh8zJtMD2gA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles forward-command-controller pluginlib rm-common roscpp sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot orientation controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
