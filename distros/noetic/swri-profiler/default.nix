
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, rosbridge-server, roscpp, rospy, std-msgs, swri-profiler-msgs }:
buildRosPackage {
  pname = "ros-noetic-swri-profiler";
  version = "0.2.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "swri_profiler-release";
        rev = "release/noetic/swri_profiler/0.2.2-1";
        sha256 = "sha256-qOoJ03sjU2FSyX6zdrg6vEvMcnN0mZvpcf32l4w02PQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater rosbridge-server roscpp rospy std-msgs swri-profiler-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_profiler provides basic tools for real-time selective
    profiling of ROS C++ nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
