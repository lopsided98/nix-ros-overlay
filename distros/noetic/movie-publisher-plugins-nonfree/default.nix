
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exiftool-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-nonfree";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_nonfree/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "4ad92e722e39785460e47d84e50d09547cf770b94e2355b0fe5443dc9597ec6a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exiftool-metadata-extractor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "movie_publisher metadata plugins with nonfree licenses. exiftool is free for personal use.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
