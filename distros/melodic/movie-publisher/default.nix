
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ffmpeg, pythonPackages, rosbash-params, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-movie-publisher";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "peci1";
        repo = "movie_publisher-release";
        rev = "release/melodic/movie_publisher/1.3.1-1";
        sha256 = "sha256-0Zcu+GmIrUNRq0ot+uGJ4Hdr3zw10Keyj0pdIAAwue4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge ffmpeg pythonPackages.imageio pythonPackages.opencv3 rosbash-params rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for using a video file as video topic source.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
