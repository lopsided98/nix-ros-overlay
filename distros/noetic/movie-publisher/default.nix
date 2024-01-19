
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ffmpeg, python3Packages, rosbash-params, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "6edca14980b83ae2e65e9b7e7a630d5a1c342391ada74da7bbc0cf3be35ff51d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge ffmpeg python3Packages.imageio python3Packages.opencv4 rosbash-params rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for using a video file as video topic source.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
