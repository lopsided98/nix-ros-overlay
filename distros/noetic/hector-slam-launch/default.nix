
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-geotiff, hector-geotiff-plugins, hector-map-server, hector-mapping, hector-trajectory-server, rviz, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-hector-slam-launch";
  version = "0.5.2-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_slam-release";
        rev = "release/noetic/hector_slam_launch/0.5.2-4";
        sha256 = "sha256-lf95pax61Wbe7ju2yV21uNp5MeBOuXqhiuT38UmhLuo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-geotiff hector-geotiff-plugins hector-map-server hector-mapping hector-trajectory-server rviz tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_slam_launch contains launch files for launching hector_slam with different robot systems/setups/postprocessing scenarios.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
