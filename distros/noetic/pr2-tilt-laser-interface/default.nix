
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, eigen, laser-geometry, message-generation, message-runtime, pcl-conversions, pcl-ros, pr2-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-tilt-laser-interface";
  version = "0.0.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_common_actions-release";
        rev = "release/noetic/pr2_tilt_laser_interface/0.0.12-1";
        sha256 = "sha256-aRcVuPhRWoPu5/vp/fh7HbfIhkGrwyeStXcfJfdmapU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs eigen laser-geometry message-runtime pcl-conversions pcl-ros pr2-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a set of tools/actions for manipulating the pr2's tilting
    laser. Simplifies previously complex tasks, such as fetching
    a single sweep, given a set of desired parameters for both the laser
    driver and tilting platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
