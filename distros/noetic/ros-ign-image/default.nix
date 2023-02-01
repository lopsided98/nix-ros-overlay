
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ignition, image-transport, ros-ign-bridge, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-image";
  version = "0.111.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_ign-release";
        rev = "release/noetic/ros_ign_image/0.111.2-1";
        sha256 = "sha256-gvUs1apYO+4dY7lO5JGeCPGiW//7DtcCNoXvOr1J8FM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ignition.msgs5 ignition.transport8 image-transport ros-ign-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Image utilities for Ignition simulation with ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
