
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager-metadata-extractor, catkin, gpmf-metadata-extractor, lensfun-metadata-extractor, libexif-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-permissive";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_permissive/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "084c9a16d6bcd120aeb93ad9508c938fb909d38efa5709ca7f45b00d3e3a72b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager-metadata-extractor gpmf-metadata-extractor lensfun-metadata-extractor libexif-metadata-extractor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "movie_publisher metadata plugins with permissive licenses";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
