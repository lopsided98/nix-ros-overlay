
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, movie-publisher-plugins-copyleft, movie-publisher-plugins-nonfree, movie-publisher-plugins-permissive }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "ebf826cffc47b0d01f0d34451b58e05022d4540c9751effd200f12c233f51315";
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
