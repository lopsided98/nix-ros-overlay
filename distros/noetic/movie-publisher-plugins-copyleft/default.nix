
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exiv2-metadata-extractor }:
buildRosPackage {
  pname = "ros-noetic-movie-publisher-plugins-copyleft";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/peci1/movie_publisher-release/archive/release/noetic/movie_publisher_plugins_copyleft/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "14bba374aca4d5bcc90e31f19e1083e667746795dcfc8660910aee75ceb8a621";
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
