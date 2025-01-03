
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-libmaps, mrpt-libros-bridge, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mrpt-map";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_map/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "402ddc672d0eee1faf3c20412d815662fe6874280e444473bb9a45e7f4cebc62";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-libmaps mrpt-libros-bridge nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
