
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, joint-limits-interface, realtime-tools, rm-common, rm-msgs, roscpp, roslint, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-rm-hw";
  version = "0.1.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_control-release";
        rev = "release/noetic/rm_hw/0.1.15-1";
        sha256 = "sha256-Bnpd1F3/KeL0uWUjCL9v/f5t2Md4Y9l6KtzJX4vGmMA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface joint-limits-interface realtime-tools rm-common rm-msgs roscpp roslint transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS control warped interface for RoboMaster motor and some robot hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
