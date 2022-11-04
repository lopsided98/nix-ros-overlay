
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ffmpeg, pythonPackages, rosbash-params, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-movie-publisher";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/melodic/movie_publisher/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "917662a10f791fb87c5a3e7d42433f0c0a83365c5e9eba6aa3c05642e6df1f71";
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
