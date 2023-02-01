
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, filters, grid-map-core, gtest }:
buildRosPackage {
  pname = "ros-noetic-grid-map-cv";
  version = "1.6.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "anybotics";
        repo = "grid_map-release";
        rev = "release/noetic/grid_map_cv/1.6.4-1";
        sha256 = "sha256-NgGfnWGegzwTwUZXew8KsV7uZzFcDdyJw7dqQkxhTrg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ cv-bridge filters grid-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
