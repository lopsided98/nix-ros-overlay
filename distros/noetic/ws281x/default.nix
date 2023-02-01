
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, led-msgs, message-generation, ros-environment, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ws281x";
  version = "0.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CopterExpress";
        repo = "ros_led-release";
        rev = "release/noetic/ws281x/0.0.11-1";
        sha256 = "sha256-izc3WIENufDJGluuKyE19SEX0vEez8E5kP2svi5yL/I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ led-msgs message-generation roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for rpi_ws281x LED strip driver'';
    license = with lib.licenses; [ mit bsdOriginal ];
  };
}
