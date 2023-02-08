
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dwb-critics, dwb-local-planner, dwb-plugins, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core, nav-core2, nav-grid, nav-msgs, pluginlib, roslint, rostest, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav-core-adapter";
  version = "0.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/noetic/nav_core_adapter/0.3.0-2";
        sha256 = "sha256-vowLCtbmyH+JciRFH89foI2UXV7AVRfMksMhyDCwqmg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ dwb-critics dwb-local-planner dwb-plugins roslint rostest ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs nav-2d-msgs nav-2d-utils nav-core nav-core2 nav-grid nav-msgs pluginlib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
      See README.md for more information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
