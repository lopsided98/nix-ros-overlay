
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, mav-msgs, roscpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotors-joy-interface";
  version = "2.2.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-asl";
        repo = "rotors_simulator-release";
        rev = "release/melodic/rotors_joy_interface/2.2.3-0";
        sha256 = "sha256-hMBwJfmCL9x5LFRn0Qq/tN3wJ90iw4rA9lxIMTwW+VE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs mav-msgs roscpp sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_joy_interface package to control MAVs with a joystick'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
