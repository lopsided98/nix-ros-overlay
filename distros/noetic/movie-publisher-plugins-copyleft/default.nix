
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exiv2-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-copyleft";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_copyleft/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "9075e873646148140abde42d4d861412d1827b3ff430f2855d7303799ce17cf5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exiv2-metadata-extractor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "movie_publisher metadata plugins with copyleft licenses";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
