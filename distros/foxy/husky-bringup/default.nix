
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-base, husky-control, husky-description, microstrain-inertial-driver, robot-upstart, urg-node, velodyne-driver, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-foxy-husky-bringup";
  version = "1.0.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "husky-release";
        rev = "release/foxy/husky_bringup/1.0.7-1";
        sha256 = "sha256-fQPcUh4v7OZBDtHrfoadDyQWdSCPF+6BwxYUyf4mAo4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-base husky-control husky-description microstrain-inertial-driver robot-upstart urg-node velodyne-driver velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
