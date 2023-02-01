
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lauv-description, uuv-auv-control-allocator, uuv-control-utils, uuv-teleop, uuv-trajectory-control }:
buildRosPackage {
  pname = "ros-melodic-lauv-control";
  version = "0.1.6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "lauv_gazebo-release";
        rev = "release/melodic/lauv_control/0.1.6-0";
        sha256 = "sha256-UzkAxY8WnWmD6mDdbZv2GyleNJ47Zb8zUhe4srNC850=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lauv-description uuv-auv-control-allocator uuv-control-utils uuv-teleop uuv-trajectory-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of configuration and launch files to start controllers for the LAUV.'';
    license = with lib.licenses; [ asl20 ];
  };
}
