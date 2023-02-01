
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-speed-scaling-interface";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UniversalRobots";
        repo = "Universal_Robots_ROS_scaled_controllers-release";
        rev = "release/melodic/speed_scaling_interface/0.1.0-1";
        sha256 = "sha256-OfoHqjr37QumzWq8tBJgBPqbaA4yXDN/kI6JBfVCoS8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware interface reading a scalar value from robot hardware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
