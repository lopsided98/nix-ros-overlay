
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer, cartographer-ros, cartographer-ros-msgs, catkin, eigen-conversions, message-runtime, qt5, roscpp, roslib, rviz }:
buildRosPackage {
  pname = "ros-melodic-cartographer-rviz";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "cartographer_ros-release";
        rev = "release/melodic/cartographer_rviz/1.0.0-1";
        sha256 = "sha256-0RLwBRA5FTm0JAzvTS4eRYjxrO/nemLOC47lJOnR6Ac=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cartographer cartographer-ros cartographer-ros-msgs eigen-conversions message-runtime qt5.qtbase roscpp roslib rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
