
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-copernicus-description";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "copernicus-release";
        rev = "release/melodic/copernicus_description/1.1.0-1";
        sha256 = "sha256-Lh+JOgQSrgeowRHU27p3UCJ2L8JyLBYZ6B3/xywbVTw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch velodyne-description ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_description package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
