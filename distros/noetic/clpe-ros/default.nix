
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clpe, clpe-ros-msgs, cv-bridge, geometry-msgs, image-transport, roscpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-clpe-ros";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "canlab-co";
        repo = "clpe_ros-ros-release";
        rev = "release/noetic/clpe_ros/0.1.1-1";
        sha256 = "sha256-cY1Z0D9WVOsePJQ2qUB0VZUZJ/lCyGocFUJmRhEMevw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clpe clpe-ros-msgs cv-bridge geometry-msgs image-transport roscpp sensor-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for CANLAB CLPE-G-NVP2650D'';
    license = with lib.licenses; [ asl20 ];
  };
}
