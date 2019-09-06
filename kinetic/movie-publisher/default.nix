
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, cv-bridge, ffmpeg, rospy, libav, rosbash-params }:
buildRosPackage {
  pname = "ros-kinetic-movie-publisher";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/kinetic/movie_publisher/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "5c770c56fa994630a9d41c3a9d1a0ee0c879620097eb96a6d768f903c3c1db9f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs cv-bridge ffmpeg pythonPackages.opencv3 rospy libav rosbash-params ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for using a video file as video topic source.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
