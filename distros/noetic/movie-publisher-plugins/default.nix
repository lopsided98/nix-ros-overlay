
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, movie-publisher-plugins-copyleft, movie-publisher-plugins-nonfree, movie-publisher-plugins-permissive }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "1f1bf17f103a9a5f5c90548ddf3551c2a63304fde71f4ea4d526b476a59af11e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ movie-publisher-plugins-copyleft movie-publisher-plugins-nonfree movie-publisher-plugins-permissive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "movie_publisher metadata plugins (all licenses)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
