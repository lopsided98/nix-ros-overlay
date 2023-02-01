
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, roslint }:
buildRosPackage {
  pname = "ros-noetic-velodyne-pcl";
  version = "1.7.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "velodyne-release";
        rev = "release/noetic/velodyne_pcl/1.7.0-1";
        sha256 = "sha256-svqh78z1EDXZzkkTOTOOKC8/+oANCO7Ue7eSgpGurQQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The velodyne_pcl package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
