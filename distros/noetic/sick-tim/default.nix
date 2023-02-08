
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libusb1, robot-state-publisher, roscpp, roslaunch, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-sick-tim";
  version = "0.0.17-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "sick_tim-release";
        rev = "release/noetic/sick_tim/0.0.17-1";
        sha256 = "sha256-BpL2J53RqWWL3YAhZxl99C0rj4RP5bRGbxp+RAPIoLA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure libusb1 robot-state-publisher roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
