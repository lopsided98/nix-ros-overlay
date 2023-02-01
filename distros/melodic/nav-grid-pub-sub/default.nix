
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, map-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-iterators, nav-msgs, roscpp, roslint }:
buildRosPackage {
  pname = "ros-melodic-nav-grid-pub-sub";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/melodic/nav_grid_pub_sub/0.3.0-1";
        sha256 = "sha256-IXz41GAYqsg8Eoqao9CJNDK7UDHu1wFkZjEVyP8A8SA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs map-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-iterators nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Publishers and Subscribers for nav_grid data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
