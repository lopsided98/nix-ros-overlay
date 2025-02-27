
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exiftool-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-nonfree";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_nonfree/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "a2e5605f23cbaa743dcbe0e48285fc226a11af8425a8c5505a4fd97dde92b945";
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
