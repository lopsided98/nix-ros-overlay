
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, seed-r7-ros-controller }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-robot-interface";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "seed-solutions";
        repo = "seed_r7_ros_pkg-release";
        rev = "release/melodic/seed_r7_robot_interface/0.3.3-1";
        sha256 = "sha256-qYm2F+/VypdLCkmhs9TlIiitasv+ehN6G9ARQbTgN7Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp seed-r7-ros-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_robot_interface package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
