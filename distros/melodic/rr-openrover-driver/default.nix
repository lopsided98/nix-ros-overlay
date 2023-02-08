
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, message-generation, message-runtime, nav-msgs, roscpp, rospy, rr-openrover-driver-msgs, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-driver";
  version = "1.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "RoverRobotics-release";
        repo = "rr_openrover_stack-release";
        rev = "release/melodic/rr_openrover_driver/1.1.1-1";
        sha256 = "sha256-N8bVuJSBivrnWlEJTOjp+9vLY7PbkElgUpK2WD2IE4I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation tf2-geometry-msgs ];
  propagatedBuildInputs = [ geometry-msgs joy message-runtime nav-msgs roscpp rospy rr-openrover-driver-msgs sensor-msgs std-msgs tf2 twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an interface between ros and Rover Robotics rover hardware. Inputs to rr_openrover_driver
    include emergency stop and velocity commands.  It outputs diagnostic data such as encoder
    readings and battery charge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
