
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laptop-battery-monitor, libsensors-monitor }:
buildRosPackage {
  pname = "ros-noetic-linux-peripheral-interfaces";
  version = "0.2.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "linux_peripheral_interfaces-release";
        rev = "release/noetic/linux_peripheral_interfaces/0.2.2-1";
        sha256 = "sha256-iroBExDPMILuv8NHA+U4Plq1E65g1H0/wjYvXtIvCGw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laptop-battery-monitor libsensors-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple scripts which help utilise, monitor, interact with computer
     hardware abstracted by a linux OS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
