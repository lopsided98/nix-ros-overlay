
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager-metadata-extractor, catkin, lensfun-metadata-extractor, libexif-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-permissive";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_permissive/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "1cc491443c5fae48b18bbafd56dcb5647cdafee805e5f2834cbb953875df7cfb";
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
