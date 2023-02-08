
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, nav-msgs, nav2d-localizer, nav2d-msgs, roscpp, suitesparse, tbb, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav2d-karto";
  version = "0.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "skasperski";
        repo = "navigation_2d-release";
        rev = "release/noetic/nav2d_karto/0.4.3-1";
        sha256 = "sha256-VmdDvLhP+yUHcema1929O23154uOQ4HidnF+Olerr4A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs nav2d-localizer nav2d-msgs roscpp suitesparse tbb tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graph-based Simultaneous Localization and Mapping module.
    Includes OpenKarto GraphSLAM library by &quot;SRI International&quot;.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
