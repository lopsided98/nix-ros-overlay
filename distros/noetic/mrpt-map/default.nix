
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt2, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mrpt-map";
  version = "1.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mrpt-ros-pkg-release";
        repo = "mrpt_navigation-release";
        rev = "release/noetic/mrpt_map/1.0.3-1";
        sha256 = "sha256-uVw11bzQNNLeCSkYlWpN502jdgIKwQcXt+atEOItQvw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt2 nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
