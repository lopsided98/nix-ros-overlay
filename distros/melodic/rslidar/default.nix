
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rslidar-driver, rslidar-msgs, rslidar-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-rslidar";
  version = "1.0.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CPFL";
        repo = "robosense-release";
        rev = "release/melodic/rslidar/1.0.2-0";
        sha256 = "sha256-RYxAMRkGX8Ddf6Ymik1nAKy08Cy3N1f4iQW0nCYRoRI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rslidar-driver rslidar-msgs rslidar-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic ROS support for the Robosense 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
