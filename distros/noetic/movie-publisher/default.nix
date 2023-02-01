
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ffmpeg, python3Packages, rosbash-params, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "peci1";
        repo = "movie_publisher-release";
        rev = "release/noetic/movie_publisher/1.4.0-1";
        sha256 = "sha256-tSfS7N3J1x/CtxS8uk8NcQxbKjkj17nk14q7hfj5+Fs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge ffmpeg python3Packages.imageio python3Packages.opencv3 rosbash-params rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for using a video file as video topic source.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
