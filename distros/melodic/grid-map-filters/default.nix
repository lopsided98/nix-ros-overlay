
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, grid-map-core, grid-map-msgs, grid-map-ros, gtest, opencv, tbb }:
buildRosPackage {
  pname = "ros-melodic-grid-map-filters";
  version = "1.6.4-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "anybotics";
        repo = "grid_map-release";
        rev = "release/melodic/grid_map_filters/1.6.4-2";
        sha256 = "sha256-t00WIN/CLS+qjHIEn22SFDBvc/fi6itSHZyGkf+7Xh0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros opencv tbb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
