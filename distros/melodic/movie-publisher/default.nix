
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ffmpeg, pythonPackages, rosbash-params, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-movie-publisher";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/melodic/movie_publisher/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "d25ff36cadc9c0e22259a1e55b9e761efcc0e9ed0f4c1fcd30c1f919dfb90f4b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge ffmpeg pythonPackages.imageio pythonPackages.opencv3 rosbash-params rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for using a video file as video topic source.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
