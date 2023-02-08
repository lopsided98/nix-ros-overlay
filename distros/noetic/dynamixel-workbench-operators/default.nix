
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-workbench-operators";
  version = "2.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "dynamixel-workbench-release";
        rev = "release/noetic/dynamixel_workbench_operators/2.2.1-1";
        sha256 = "sha256-ep75GQ0shZjm7SBFe5tkisMwgV6OM1IspCr37QTx+4w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules geometry-msgs libyamlcpp roscpp sensor-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains nodes that control the Dynamixel by communicating with the server registered in the 'dynamixel_workbench_controllers' package'';
    license = with lib.licenses; [ asl20 ];
  };
}
