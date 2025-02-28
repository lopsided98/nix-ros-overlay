
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, movie-publisher-plugins-copyleft, movie-publisher-plugins-nonfree, movie-publisher-plugins-permissive }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "2815986c227304130386465ee7a08d30699ffb11aedfee28f706b504d277c66c";
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
