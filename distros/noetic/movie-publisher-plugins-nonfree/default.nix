
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exiftool-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-nonfree";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_nonfree/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "0f3c52fd16a6344b4a03b14630579ccb17ccf1e51367270c6109c331ed9b871b";
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
