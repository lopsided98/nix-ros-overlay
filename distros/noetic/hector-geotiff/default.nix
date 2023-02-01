
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-nav-msgs, nav-msgs, pluginlib, qt5, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-geotiff";
  version = "0.5.2-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_slam-release";
        rev = "release/noetic/hector_geotiff/0.5.2-4";
        sha256 = "sha256-olJHS7ncyaE0kdR4b/E3yAZVIUGBLv5rExcVrAXhKMQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-map-tools hector-nav-msgs nav-msgs pluginlib qt5.qtbase qt5.qtimageformats roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_geotiff provides a node that can be used to save occupancy grid map, robot trajectory and object of interest data to RoboCup Rescue compliant GeoTiff images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
