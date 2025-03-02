
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager-metadata-extractor, catkin, lensfun-metadata-extractor, libexif-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-permissive";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_permissive/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "63dcab50dc2c6974bfa20eab7af0936985db9186792ec9ab4042a6c7edbeabd5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager-metadata-extractor lensfun-metadata-extractor libexif-metadata-extractor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "movie_publisher metadata plugins with permissive licenses";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
