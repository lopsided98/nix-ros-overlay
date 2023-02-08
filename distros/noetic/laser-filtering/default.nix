
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-laser }:
buildRosPackage {
  pname = "ros-noetic-laser-filtering";
  version = "0.0.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "laser_filtering_release";
        rev = "release/noetic/laser_filtering/0.0.5-1";
        sha256 = "sha256-srvGlOmSVgnSQxbo6lyReX9JSj3RAvNBRZuWtEIxZ9w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ map-laser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Libraries for filtering specific kinds of laser scans'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
