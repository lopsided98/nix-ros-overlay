
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-odometry-publisher-tutorial";
  version = "0.2.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "navigation_tutorials-release";
        rev = "release/melodic/odometry_publisher_tutorial/0.2.4-1";
        sha256 = "sha256-ni3mdnTCL+KQ5sCxHZ4ClJy9wYwpVomDRicHVCSb4ZY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The odometry_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
