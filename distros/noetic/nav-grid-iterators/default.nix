
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-2d-msgs, nav-2d-utils, nav-grid, nav-msgs, roscpp, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-nav-grid-iterators";
  version = "0.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/noetic/nav_grid_iterators/0.3.0-2";
        sha256 = "sha256-/SeMwrawK+s8y829ZdwAlvKajQp/y/14RDCqaDxwZ6g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rosunit ];
  propagatedBuildInputs = [ nav-2d-msgs nav-2d-utils nav-grid nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Iterator implementations for moving around the cells of a nav_grid in a number of common patterns.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
